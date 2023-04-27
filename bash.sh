#!/bin/bash
cd /home/grid/testbed/tb117/vec_samples/src
ml icc
arr=( "fpu" "vme" "de" "pse" "tsc" "msr" "pae" "mce" "cx8" "apic" "sep" "mtrr" "pge" "mca" "cmov" "pat" "pse36" "clflush" "dts" "acpi" "mmx" "fxsr" "sse" "sse2" "ss" "ht" "tm" "pbe" "syscall" "nx" "pdpe1gb" "rdtscp" "lm" "constant_t" "sc" "arch_perfmon" "pebs" "bts" "rep_good" "nopl" "xtopology" "nonstop_tsc" "aperfmperf" "eagerfpu" "pni" "pclmulqdq" "dtes64" "monitor" "ds_cpl" "vmx" "smx" "est" "tm2" "ssse3" "cx16" "xtpr" "pdcm" "pcid" "dca" "sse4_1" "sse4_2" "x2apic" "popcnt" "tsc_deadline_timer" "aes" "xsave" "avx" "lahf_lm" "epb" "ssbd" "ibrs" "ibpb" "stibp" "tpr_shadow" "vnmi" "flexpriority" "ept" "vpid" "xsaveopt" "dtherm" "ida" "arat" "pln" "pts" "md_clear" "spec_ctrl" "intel_stibp" "flush_l1d")
for j in "${arr[@]}"; do
for i in {1..3}; do
name=date +%T
icc -O$i -m$j F1.c -o go-$name
echo "$j $i:"
time ./go-$name
done
done
`
