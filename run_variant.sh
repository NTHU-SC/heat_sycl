#! /bin/bash

mkdir -p results/$SUBDIR

rm results/$SUBDIR/out-$1.txt -f

for n in 50 1000 3000 5000 10000 20000; do
	echo "Running variant $1, size $n"
	./experiment.sh ./build/$1 $n >> results/$SUBDIR/out-$1.txt
done
