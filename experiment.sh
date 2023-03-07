#! /bin/bash

REPEAT=5

total_time=0
total_bw=0

calc() { awk "BEGIN{ printf \"%.2f\n\", $* }"; }

for i in $(seq $REPEAT); do
	read -r sec bw <<< $(./$1 $2 50 | perl -lne '/^(Total time \(s\): |Bandwidth \(GB\/s\): )([\d\.]+)/ && print $2' | tr '\n' ' ')
	total_time=$(calc "$total_time + $sec")
	total_bw=$(calc "$total_bw + $bw")
done

echo "$2 $(calc "$total_time / $REPEAT") $(calc "$total_bw / $REPEAT")"
