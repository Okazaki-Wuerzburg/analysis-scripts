#!/bin/bash

fasta=$1
name=$2
cpu=$3

/storage/compevolbiol/software/BUSCO/scripts/run_busco-plants-proteins.sh "$fasta" "$name" "$cpu"
