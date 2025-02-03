#!/bin/bash

BASE=~/Desktop/pt/pairtree
INPUT_SSM=$BASE/final_withoutcnv_3
SCRIPT=$BASE/bin

function plot {

for ssmfn in $INPUT_SSM/ssm/*.ssm; do
runid=$(basename $ssmfn | cut -d. -f1)


	python3 $SCRIPT/summposterior  $INPUT_SSM/ssm/$runid.ssm  $INPUT_SSM/params/$runid.name.json $INPUT_SSM/trees/$runid.results.npz $INPUT_SSM/summ/$runid.sum.html



done
}

plot


#BASE=~/Desktop/pt/pairtree
#INPUT_SSM=$BASE/forjane
#SCRIPT=$BASE/bin

#python3 $SCRIPT/plottree --tree-index 3 --seed 226 $INPUT_SSM/ssm/L91.ssm  $INPUT_SSM/params/#L91.json $INPUT_SSM/trees/L91.results.npz $INPUT_SSM/trees/plots/L91.0.html
