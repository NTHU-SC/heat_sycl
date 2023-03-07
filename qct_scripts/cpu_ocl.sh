
module purge
module load ocl_headers
module load gcc-11.3
module load compiler/latest init_opencl/latest

icpx -std=c++11 -I. -O3 heat_ocl.cpp -lOpenCL -o build/heat_ocl-cpu
