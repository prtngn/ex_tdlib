BUILD_ROOT=$(MIX_BUILD_PATH)/lib/tdlib_json_cli
BUILD_ARTIFACT=$(BUILD_ROOT)/bin/tdlib_json_cli

JOBS=4
VERBOSE=0

TDLIBJSONCLI_SRC=$(MIX_DEPS_PATH)/tdlib_json_cli

all:
	if [ ! -f $(BUILD_ARTIFACT) ]; then \
		make build; \
	fi

clean:
	rm -r $(BUILD_ROOT)

build:
	mkdir -p $(BUILD_ROOT)

ifeq ($(shell uname),Darwin)
	cd $(BUILD_ROOT); \
	cmake -DCMAKE_BUILD_TYPE=Release \
    $(TDLIBJSONCLI_SRC) ; \
	make -j$(JOBS) VERBOSE=$(VERBOSE)
else
	cd $(BUILD_ROOT); \
	cmake -DCMAKE_BUILD_TYPE=Release \
	  $(TDLIBJSONCLI_SRC) ; \
	make -j$(JOBS) VERBOSE=$(VERBOSE)
endif
