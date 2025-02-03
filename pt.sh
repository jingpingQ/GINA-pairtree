#!/bin/bash

BASE=~/Desktop/pt/pairtree
INPUT_SSM=$BASE/final_withoutcnv_4
SCRIPT=$BASE/bin

function tree {

for ssmfn in $INPUT_SSM/ssm/*.ssm; do
runid=$(basename $ssmfn | cut -d. -f1)


	python3 $SCRIPT/pairtree --parallel 4 --seed 226 --tree-chains 4 --trees-per-chain 25000 --phi-fitter rprop --phi-iterations 10000 --thinned-frac 1.0 --burnin 0.3333 --gamma 0.7 --params $INPUT_SSM/params/$runid.name.json $INPUT_SSM/ssm/$runid.ssm $INPUT_SSM/trees/$runid.results.npz



done
}

tree