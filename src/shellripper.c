#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <stdint.h>

#include "lib/injector.h"
#include "lib/banner.h"
#include "lib/helpfile.h"

int cmd_check(char* cmd) {
	if (strcmp(cmd, "") == 0) {}
	else if (strcmp(cmd, "help") == 0) { helpfile(); }
	else if (strcmp(cmd, "inject.shellcode") == 0) { shellcode_injection(); }
	else if (strcmp(cmd, "exit") == 0) { exit(EXIT_SUCCESS); }
	else { return 0; }
	return 1;
}

int main(int argc, char *argv[]) {
	banner();

	char cmd[4048];
	int result;
	while ( 1 == 1 ) {
		printf("[SHELLRIPPER][Input] >");
		scanf("%s", &cmd);
		result = cmd_check(cmd);
		if (result == 0) printf("[SHELLRIPPER][Error] Not valid command specified!\n");
	}
	return 0;
}
