#!/bin/bash

export ZOE="/storage/compevolbiol/software/snap/snap/Zoe"
export PATH="/storage/compevolbiol/software/snap/snap/":$PATH


echo "######################"
date
echo "gene stats"
echo ""
fathom genome.ann genome.dna -gene-stats


echo "######################"
date
echo "validate"
echo ""
fathom genome.ann genome.dna -validate

echo "######################"
date
echo "categorize genes"
echo ""
fathom genome.ann genome.dna -categorize 1000

echo "######################"
date
echo "convert strand"
echo ""
fathom uni.ann uni.dna -export 1000 -plus

echo "######################"
date
echo "parameter estimation"
echo ""
mkdir params
cd params
forge ../export.ann ../export.dna
cd ..

echo "######################"
date
echo "build HMM"
echo ""
hmm-assembler.pl my-genome params > my-genome.hmm
