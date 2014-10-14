#include <stdio.h>

int calculateAddOnGPU(int a, int b);

int main()
{
	int result = calculateAddOnGPU(4, 3);

	printf("Result %i + %i = %i\n", 4, 3, result);
	getchar();

	return 0;
}