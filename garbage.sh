#!/bin/bash

BASE=~/Desktop/pt/pairtree
INPUT_SSM=$BASE/final_withoutcnv_4
#GARB=$BASE/bin
BADVAR=$BASE/util

#function rgarb {
#
#for ssmfn in $INPUT_SSM/ssm/*.ssm; do
#runid=$(basename $ssmfn | cut -d. -f1)
#
#
#	python3 $GARB/removegarbage $INPUT_SSM/ssm/$runid.ssm $INPUT_SSM/params/$runid.name.json #$INPUT_SSM/params/$runid.name.json --verbose
#
#
#
#done
#}

#rgarb


function rvar {

for ssmfn in $INPUT_SSM/ssm/*.ssm; do
runid=$(basename $ssmfn | cut -d. -f1)


	python3 $BADVAR/fix_bad_var_read_prob.py --action modify_var_read_prob $INPUT_SSM/ssm/$runid.ssm $INPUT_SSM/params/$runid.name.json $INPUT_SSM/ssm/$runid.ssm $INPUT_SSM/params/$runid.name.json --verbose

	echo $runid


done
}

rvar
