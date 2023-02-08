#ifndef HELPFILE_H_
#define HELPFILE_H_

#include <stdio.h>

void helpfile(void) {
	printf("\n");
	printf("Standard options:\n");
	printf("     [exit] Exits shellripper.\n");
	printf("     [help] Displays this message and exit.\n");
	printf("Injector options:\n");
	printf("     [inject.shellcode] Starts the shellcode injector.\n");
	printf("\n");
}

#endif
