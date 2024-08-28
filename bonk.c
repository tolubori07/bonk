#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int greeting() {
    FILE *pF = fopen("./bun.lockb", "r");
    if (pF == NULL) {
        printf("BONK!!!!!\nbun.lockb not found in the current directory\n"
               "Please execute bonk in a bun project directory.\n");
        return 1; // Return 1 to indicate failure
    } else {
        fclose(pF); // Don't forget to close the file
        system("~/coding/justcoding/clang/bonk/bonk.sh");
        return 0; // Return 0 to indicate success
    }
}

void install(char packages[255]) {
    char cmdinstall[512];
    packages[strcspn(packages, "\n")] = '\0'; // Remove trailing newline
    snprintf(cmdinstall, sizeof(cmdinstall), "bun add %s", packages);
    system(cmdinstall);
}

int main(int argc, char *argv[]) {
    if (greeting() != 0) {
        return EXIT_FAILURE; // Exit if greeting() indicates failure
    }

    printf("Welcome to bonk, let's get started shall we?\n");
    printf("What packages do you wish to install? (Separate their names by spaces): ");

    char packages[255];
    fgets(packages, sizeof(packages), stdin);
    install(packages);

    return EXIT_SUCCESS;
}
