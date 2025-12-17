#include <erl_nif.h>
#include <stdio.h>
#include <string.h>
#include <td/telegram/td_json_client.h>

// Resource type for the client pointer
ErlNifResourceType *CLIENT_RESOURCE;

void client_dtor(ErlNifEnv *env, void *obj) {
  // The client is destroyed explicitly or by tdlib when closed?
  // td_json_client_destroy((void**)obj);
  // Actually td_json_client_destroy takes a pointer to the client pointer.
  // Ensure we don't double free if we destroyed it manually.
}

static int load(ErlNifEnv *env, void **priv_data, ERL_NIF_TERM load_info) {
  CLIENT_RESOURCE =
      enif_open_resource_type(env, NULL, "client_resource", client_dtor,
                              ERL_NIF_RT_CREATE | ERL_NIF_RT_TAKEOVER, NULL);
  return 0;
}

static ERL_NIF_TERM nif_client_create(ErlNifEnv *env, int argc,
                                      const ERL_NIF_TERM argv[]) {
  void *client = td_json_client_create();

  void **res = enif_alloc_resource(CLIENT_RESOURCE, sizeof(void *));
  *res = client;

  ERL_NIF_TERM term = enif_make_resource(env, res);
  enif_release_resource(res);

  return term;
}

static ERL_NIF_TERM nif_client_send(ErlNifEnv *env, int argc,
                                    const ERL_NIF_TERM argv[]) {
  void **client_ptr;
  if (!enif_get_resource(env, argv[0], CLIENT_RESOURCE, (void **)&client_ptr)) {
    return enif_make_badarg(env);
  }

  ErlNifBinary bin;
  if (!enif_inspect_binary(env, argv[1], &bin)) {
    return enif_make_badarg(env);
  }

  // td_json_client_send expects a null-terminated string.
  // We need to copy the binary to a string buffer.
  char *request = (char *)enif_alloc(bin.size + 1);
  memcpy(request, bin.data, bin.size);
  request[bin.size] = '\0';

  td_json_client_send(*client_ptr, request);

  enif_free(request);

  return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_client_receive(ErlNifEnv *env, int argc,
                                       const ERL_NIF_TERM argv[]) {
  void **client_ptr;
  if (!enif_get_resource(env, argv[0], CLIENT_RESOURCE, (void **)&client_ptr)) {
    return enif_make_badarg(env);
  }

  double timeout;
  if (!enif_get_double(env, argv[1], &timeout)) {
    // Try getting integer if double fails
    int timeout_int;
    if (enif_get_int(env, argv[1], &timeout_int)) {
      timeout = (double)timeout_int;
    } else {
      return enif_make_badarg(env);
    }
  }

  const char *response = td_json_client_receive(*client_ptr, timeout);

  if (response) {
    ErlNifBinary bin;
    enif_alloc_binary(strlen(response), &bin);
    memcpy(bin.data, response, bin.size);
    return enif_make_binary(env, &bin);
  } else {
    return enif_make_atom(env, "nil");
  }
}

static ERL_NIF_TERM nif_client_execute(ErlNifEnv *env, int argc,
                                       const ERL_NIF_TERM argv[]) {
  void *client = NULL;
  void **client_ptr = &client;

  if (!enif_is_identical(argv[0], enif_make_atom(env, "nil"))) {
    if (!enif_get_resource(env, argv[0], CLIENT_RESOURCE,
                           (void **)&client_ptr)) {
      return enif_make_badarg(env);
    }
  }

  ErlNifBinary bin;
  if (!enif_inspect_binary(env, argv[1], &bin)) {
    return enif_make_badarg(env);
  }

  char *request = (char *)enif_alloc(bin.size + 1);
  memcpy(request, bin.data, bin.size);
  request[bin.size] = '\0';

  const char *response = td_json_client_execute(*client_ptr, request);
  enif_free(request);

  if (response) {
    ErlNifBinary bin_resp;
    enif_alloc_binary(strlen(response), &bin_resp);
    memcpy(bin_resp.data, response, bin_resp.size);
    return enif_make_binary(env, &bin_resp);
  } else {
    return enif_make_atom(env, "nil");
  }
}

static ErlNifFunc nif_funcs[] = {
    {"client_create", 0, nif_client_create},
    {"client_send", 2, nif_client_send},
    // We use ERL_NIF_DIRTY_JOB_IO_BOUND because receive blocks
    {"client_receive", 2, nif_client_receive, ERL_NIF_DIRTY_JOB_IO_BOUND},
    {"client_execute", 2, nif_client_execute}};

ERL_NIF_INIT(Elixir.ExTDLib.Nif, nif_funcs, load, NULL, NULL, NULL)
