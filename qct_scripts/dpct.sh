
module purge
module load gcc-11.3
module load nvidia/cuda/11.7
module load dpct/latest

dpct --out-root=heat_dpct heat_cuda.cu
