# Makefile for building the NIF
#
# Environment variables:
# TDLIB_PATH: Path to tdlib installation (optional)
# TDLIB_INCLUDE_PATH: Path to tdlib headers (optional, override)
# TDLIB_LIB_PATH: Path to tdlib libraries (optional, override)

ERLANG_PATH = $(shell erl -eval 'io:format("~s", [lists:concat([code:root_dir(), "/erts-", erlang:system_info(version), "/include"])])' -s init stop -noshell)

# Constants
PRIV_DIR = $(MIX_APP_PATH)/priv
TD_DIR = $(PRIV_DIR)/td
TD_BUILD_DIR = $(TD_DIR)/build

# Detect OS
UNAME_S := $(shell uname -s)

# Determine paths
ifneq ($(TDLIB_PATH),)
    TDLIB_INCLUDE_PATH ?= $(TDLIB_PATH)/include
    TDLIB_LIB_PATH ?= $(TDLIB_PATH)/lib
else
    # Fallback to local build
    TDLIB_INCLUDE_PATH ?= $(TD_DIR)/include
    TDLIB_LIB_PATH ?= $(TD_DIR)/lib
    BUILD_LOCAL_TDLIB = true
endif

# Flags
NIF_CFLAGS += -g -O3 -fPIC -I$(ERLANG_PATH) -I$(TDLIB_INCLUDE_PATH)
NIF_LDFLAGS += -L$(TDLIB_LIB_PATH) -ltdjson

CLI_CFLAGS += -g -O3 -I$(TDLIB_INCLUDE_PATH)
CLI_LDFLAGS += -L$(TDLIB_LIB_PATH) -ltdjson

ifeq ($(UNAME_S),Darwin)
    NIF_LDFLAGS += -dynamiclib -undefined dynamic_lookup -rpath $(TDLIB_LIB_PATH)
    LIB_EXT = dylib
else
    NIF_LDFLAGS += -shared
    LIB_EXT = so
    CLI_LDFLAGS += -pthread -Wl,-rpath,$(TDLIB_LIB_PATH)
endif

# Targets
ifeq ($(TDLIB_ADAPTER),nif)
all: $(PRIV_DIR)/tdjson_nif.so
else
# CLI mode
ifneq ($(TDLIB_JSON_CLI_PATH),)
all: schema
else
all: $(PRIV_DIR)/tdjson_cli
endif
endif

schema:
	@if [ ! -f "$(TD_DIR)/td/generate/scheme/td_api.tl" ] && [ -z "$(TDLIB_PATH)" ]; then \
		echo "Downloading TDLib schema..."; \
		mkdir -p $(PRIV_DIR); \
		if [ ! -d "$(TD_DIR)" ]; then \
			git clone --depth 1 https://github.com/tdlib/td.git $(TD_DIR); \
		fi; \
	fi

$(PRIV_DIR)/tdjson_nif.so: src/tdjson_nif.c $(TDLIB_LIB_PATH)/libtdjson.$(LIB_EXT)
	mkdir -p $(PRIV_DIR)
	$(CC) $(NIF_CFLAGS) -o $@ $< $(NIF_LDFLAGS)

$(PRIV_DIR)/tdjson_cli: src/tdjson_cli.c $(TDLIB_LIB_PATH)/libtdjson.$(LIB_EXT)
	mkdir -p $(PRIV_DIR)
	$(CC) $(CLI_CFLAGS) -o $@ $< $(CLI_LDFLAGS)

# Rule to build TDLIB if needed
ifeq ($(BUILD_LOCAL_TDLIB),true)
$(TDLIB_LIB_PATH)/libtdjson.$(LIB_EXT):
	@echo "TDLib not found. Building from source..."
	mkdir -p $(PRIV_DIR)
	if [ ! -d "$(TD_DIR)" ]; then \
		git clone --depth 1 https://github.com/tdlib/td.git $(TD_DIR); \
	fi
	mkdir -p $(TD_BUILD_DIR)
	mkdir -p $(TD_BUILD_DIR)
	cd $(TD_BUILD_DIR) && unset LDFLAGS CFLAGS CXXFLAGS CPPFLAGS LIBRARY_PATH LD_LIBRARY_PATH DYLD_LIBRARY_PATH && cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$(TD_DIR) ..
	cd $(TD_BUILD_DIR) && unset LDFLAGS CFLAGS CXXFLAGS CPPFLAGS LIBRARY_PATH LD_LIBRARY_PATH DYLD_LIBRARY_PATH && cmake --build . --target install
else
# Dummy rule if using external lib
$(TDLIB_LIB_PATH)/libtdjson.$(LIB_EXT):
	@echo "Using external TDLib from $(TDLIB_LIB_PATH)"
endif

clean:
	rm -f $(PRIV_DIR)/tdjson_nif.so
	# We do not clean tdlib build by default as it is expensive
