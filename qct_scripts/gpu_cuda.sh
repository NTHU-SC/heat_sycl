
module purge
module load nvidia/cuda/11.7

nvcc -std=c++11 -O3 heat_cuda.cu -arch=sm_70 -o build/heat_cuda
