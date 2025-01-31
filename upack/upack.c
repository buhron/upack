#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <curl/curl.h>
#include <json-c/json.h>
#include <zip.h>
int main(int action, char *args[]) {
    CURL *curl;
    CURLcode res;
    char *prefix = getenv("UPACK_PREFIX");
    curl = curl_easy_init();
    curl_global_init(CURL_GLOBAL_ALL);
    if (strcmp(args[1], "update") == 0 ) {
                  
      return 1;
    }
    printf("Usage: upack <action> <args>\nupack install - install a package\nupack update - update the package database\n");

    curl_global_cleanup();
    return 0;
}
