
module purge
module load compiler/latest

icx -O3 -qopenmp heat.c -o build/heat_omp
