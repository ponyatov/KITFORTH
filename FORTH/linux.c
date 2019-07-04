#include <stdlib.h>
#include <stdio.h>
#include <assert.h>

int main(int argc, char* argv[]) {
	assert(argc>1);
	FILE *img = fopen(argv[1],"rb"); assert(img);
	return 0;
}
