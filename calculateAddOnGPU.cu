#include "cuda_runtime.h"
#include "device_launch_parameters.h"

__global__ void add(int a, int b, int *c)
{
	*c = a + b;
}

int calculateAddOnGPU(int a, int b)
{
	int* c = new int(0);

	cudaMallocManaged(&c, sizeof(int));

	add<<<1, 1>>>(a, b, c);
	cudaDeviceSynchronize();

	const unsigned int result = *c;

	cudaFree(c);
	cudaDeviceReset();

	return result;
}