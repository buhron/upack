#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <curl/curl.h>
#include <json-c/json.h>
#include <zip.h>
int download() {
    printf("i forgot a semicolon and all my code fell apart :/\n");
    return 1;
}
int main(int action, char *args[]) {
    CURL *curl;
    CURLcode res;
    char *prefix = getenv("UPACK_PREFIX");
    curl = curl_easy_init();
    curl_global_init(CURL_GLOBAL_ALL);
    printf("i hate coding in c 😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭😭\n");
    download();
    curl_global_cleanup();
    return 0;
}
