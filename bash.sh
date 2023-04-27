#!/bin/bash
cd /home/grid/testbed/tb263/vec_samples/src
ml icc
arr=("cmov" "pse36" "mmx" "fxsr" "sse" "sse2" "ss" "vmx" "sse4_1" "sse4_2" "avx")
for j in "${arr[@]}"; do
for i in {1..3}; do
name1=$(date +%M)
name2=$(date +%S)
icc -O$i -m$j Fibula.cpp -o go-$name1-$name2
echo "$j $i:"
time ./go-$name1-$name2
done
done
`
