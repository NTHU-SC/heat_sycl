
module purge
module load ocl_headers
module load gcc-11.3
module load nvidia/cuda/11.7

g++ -std=c++11 -I. -O3 heat_ocl_gpu.cpp -lOpenCL -o build/heat_ocl-gpu
