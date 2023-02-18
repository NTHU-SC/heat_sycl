#! /bin/bash

REPEAT=5

total_time=0
total_bw=0

for i in $(seq $REPEAT); do
	read -r sec bw <<< $(./$1 $2 50 | perl -lne '/^(Total time \(s\): |Bandwidth \(GB\/s\): )([\d\.]+)/ && print $2' | tr '\n' ' ')
	total_time=$(echo "$total_time + $sec" | bc -l)
	total_bw=$(echo "$total_bw + $bw" | bc -l)
done

echo "$2 $(echo "$total_time / $REPEAT" | bc -l) $(echo "$total_bw / $REPEAT" | bc -l)"
