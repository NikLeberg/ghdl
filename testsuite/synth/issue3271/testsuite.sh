#! /bin/sh

. ../../testenv.sh

GHDL_STD_FLAGS=--std=19
synth pkg.vhd ent.vhd -e > syn_ent.vhd

count=$(grep -c "  source.valid <=" syn_ent.vhd)
test $count -eq 1
count=$(grep -c "  ready <=" syn_ent.vhd)
test $count -eq 1

clean

echo "Test successful"
