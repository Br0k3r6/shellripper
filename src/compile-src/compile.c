#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
	char out[256];
	printf("[SHELLRIPPER][Info] Make sure that GCC is installed on your machine.\n");
	printf("[SHELLRIPPER][Compiler] Compiling shellripper project...\n");
	printf("[SHELLRIPPER][Input] Output filename: ");
	scanf("%s", &out);

	char cmd[4048];
	strcpy(cmd, "gcc shellripper.c lib/injector.h lib/banner.h lib/helpfile.h -o ");
	strcat(cmd, out);
	system(cmd);

	printf("[SHELLRIPPER][Compiler] Shellripper project successfully compiled!\n");
	return 0;
}
