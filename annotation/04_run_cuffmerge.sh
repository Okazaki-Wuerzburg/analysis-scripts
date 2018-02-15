#!/bin/bash

export PATH="/storage/compevolbiol/software/samtools/samtools-1.4/:/storage/compevolbiol/software/cufflinks/cufflinks-2.2.1.Linux_x86_64/":$PATH

threads=$1
name=$2

#find cufflnks assemblies
echo "#######################"
date
echo "searching assembly files"
echo "#######################"

find -name "transcripts.gtf" > assembly-files.list

#run cuffmerge
echo "#######################"
date
echo "running cuffmerge"
echo "#######################"

/storage/compevolbiol/software/cufflinks/cufflinks-2.2.1.Linux_x86_64/cuffmerge --num-threads "$threads" -o "$name".cufflinks assembly-files.list

#convert gtf to gff
echo "#######################"
date
echo "convert gtf to gff"
echo "#######################"

/storage/compevolbiol/software/cufflinks/cufflinks-2.2.1.Linux_x86_64/gffread -E "$name".cufflinks/merged.gtf -o "$name".cufflinks/merged.gff
