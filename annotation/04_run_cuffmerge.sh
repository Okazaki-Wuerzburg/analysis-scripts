#!/bin/bash

export PATH="/storage/compevolbiol/software/cufflinks/cufflinks-2.2.1.Linux_x86_64/":$PATH

threads=$1
name=$2
genome=$3

#find cufflnks assemblies
find -name "transcripts.gtf" > assembly-files.list

#run cuffmerge
/storage/compevolbiol/software/cufflinks/cufflinks-2.2.1.Linux_x86_64/cuffmerge --num-threads "$threads" --ref-sequence "$genome" -o "$name".cufflinks assembly-files.list

#convert gtf to gff
/storage/compevolbiol/software/cufflinks/cufflinks-2.2.1.Linux_x86_64/gffread -E "$name".cufflinks/merged.gtf -o "$name".cufflinks/merged.gff
