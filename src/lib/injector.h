#ifndef INJECTOR_H_
#define INJECTOR_H_

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void linux_inject(char* shellcode, char* file) {
	char cmd[1005001];
	printf("[SHELLRIPPER][Inject.shellcode] Injecting shellcode into file...\n");

	strcpy(cmd, "sed -i 'ls/^/");
	strcat(cmd, shellcode);
	strcat(cmd, "/' ");
	strcat(cmd, file);
	system(cmd);

	printf("[SHELLRIPPER][Inject.shellcode] Shellcode successfully injected into file: %s\n", file);
}

void shellcode_injection(void) {
	char file[256];
	char shellcode[1005001];
	printf("[SHELLRIPPER][Input] Enter the file to that you want to inject the shellcode >");
	scanf("%s", &file);
	printf("[SHELLRIPPER][Input] Enter the shellcode to inject >");
	scanf("%s", &shellcode);
	linux_inject(shellcode, file);
}

#endif
