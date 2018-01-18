#!/bin/bash

#sort and index mapping file
/storage/compevolbiol/software/samtools/samtools-1.4/samtools view -@ 32 -b Aligned.out.sam | /storage/compevolbiol/software/samtools/samtools-1.4/samtools sort -@ 32 -m 150G -o Aligned.out.sort.bam
/storage/compevolbiol/software/samtools/samtools-1.4/samtools index Aligned.out.sort.bam

#run cufflinks
/storage/compevolbiol/software/cufflinks/cufflinks-2.2.1.Linux_x86_64/cufflinks --num-threads 32 --output-dir cufflinks-out Aligned.out.sort.bam
