#! /bin/bash

rm out-$1.txt -f

for n in 50 1000 3000 5000 10000 20000; do
	./experiment.sh $1 $n >> out-$1.txt
done
