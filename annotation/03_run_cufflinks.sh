#!/bin/bash

threads=$1
mem=$2
name=$3

date
echo "running cufflinks for $name"
cd "star_$name"


#run cufflinks
/storage/compevolbiol/software/cufflinks/cufflinks-2.2.1.Linux_x86_64/cufflinks --num-threads "$threads" --output-dir cufflinks-out Aligned.sortedByCoord.out.bam
cd -

date
echo "cufflinks finished"
