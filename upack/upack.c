#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <curl/curl.h>
#include <json-c/json.h>
#include <lz4.h>
/* int help() {
    printf('c hates me');
    return 0;
}; */
int main(int action, char *args[]) {
    CURL *curl;
    CURLcode res;
    char *prefix = getenv("UPACK_PREFIX");
    curl = curl_easy_init();
    curl_global_init(CURL_GLOBAL_ALL);
    printf("[\e[31mx\e[0m] Try running upack help for more info.\n");
    curl_global_cleanup();
    return 1;
}
