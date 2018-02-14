#!/bin/bash

threads=$1
mem=$2
name=$3

date
echo "running cufflinks for $name"
cd "star_$name"


#sort and index mapping file
/storage/compevolbiol/software/samtools/samtools-1.4/samtools view -@ "$threads" -b Aligned.out.sam | /storage/compevolbiol/software/samtools/samtools-1.4/samtools sort -@ "$threads" -m "$mem" -o Aligned.out.sort.bam
/storage/compevolbiol/software/samtools/samtools-1.4/samtools index Aligned.out.sort.bam

#run cufflinks
/storage/compevolbiol/software/cufflinks/cufflinks-2.2.1.Linux_x86_64/cufflinks --num-threads "$threads" --output-dir cufflinks-out Aligned.out.sort.bam
cd -

date
echo "cufflinks finished"
