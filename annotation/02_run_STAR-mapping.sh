#!/bin/bash

threads=$1
name=$2

date
echo "running mapping for $name"

reads="$name"_R1.fq
mates="$name"_R2.fq
echo "reads: $reads"
echo "mates: $mates"


mkdir "star_$name"
cd "star_$name"


/storage/compevolbiol/software/star/bin/Linux_x86_64/STAR --runThreadN "$threads" --outSAMstrandField intronMotif --genomeDir ../genomeIndex --readFilesIn ../"$reads" ../"$mates"

cd -


date
echo "mapping finished"
