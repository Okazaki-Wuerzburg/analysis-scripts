#!/bin/bash

/storage/compevolbiol/software/star/bin/Linux_x86_64/STAR --runThreadN 32 --genomeDir ./genomeIndex --readFilesIn Aldrovanda_R1_clipped.trimmed.fastq Aldrovanda_R2_clipped.trimmed.fastq
