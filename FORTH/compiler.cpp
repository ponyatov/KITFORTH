#include <stdlib.h>
#include <stdio.h>
#include <assert.h>

int main(int argc, char* argv[]) {
	assert(argc>1);
	FILE *src = fopen(argv[1],"r"); assert(src);
	FILE *img = fopen("KITFORTH.bc","wb"); assert(img);
	return 0;
}
