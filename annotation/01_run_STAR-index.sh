#!/bin/bash

threads=$1
genome=$2

mkdir ./genomeIndex
/storage/compevolbiol/software/star/bin/Linux_x86_64/STAR --runThreadN "$threads" --runMode genomeGenerate --genomeDir ./genomeIndex --genomeFastaFiles "$genome"
