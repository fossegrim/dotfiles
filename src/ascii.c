#include <stdio.h>
#include <limits.h>

int main() {
	// first non-control character is 33
	for(char c = 33; c < CHAR_MAX; c++) {
		printf("%d\t%c\n", c, c);
	}
}
