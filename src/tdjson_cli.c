#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <td/telegram/td_json_client.h>
#include <unistd.h>

#ifdef _WIN32
#include <windows.h>
#else
#include <pthread.h>
#endif

// Simple CLI wrapper for tdjson
// Reads lines from stdin -> send to client
// Polls client -> prints lines to stdout

void *receive_loop(void *client_ptr) {
  void *client = client_ptr;
  while (1) {
    const char *result = td_json_client_receive(client, 1.0);
    if (result) {
      printf("%s\n", result);
      fflush(stdout);
    }
  }
  return NULL;
}

int main() {
  void *client = td_json_client_create();

  // Start receive thread
#ifdef _WIN32
  CreateThread(NULL, 0, (LPTHREAD_START_ROUTINE)receive_loop, client, 0, NULL);
#else
  pthread_t thread_id;
  pthread_create(&thread_id, NULL, receive_loop, client);
#endif

  // Main loop: read stdin
  char buffer[1024 * 64]; // 64KB buffer for input line
  while (fgets(buffer, sizeof(buffer), stdin)) {
    // Remove newline if present
    buffer[strcspn(buffer, "\n")] = 0;
    if (strlen(buffer) > 0) {
      td_json_client_send(client, buffer);
    }
  }

  td_json_client_destroy(client);
  return 0;
}
