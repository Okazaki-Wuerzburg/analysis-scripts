#!/bin/bash

data=$1

#create zff file
echo "#################"
date
echo "create zff file"
echo "#################"
/storage/compevolbiol/software/Maker/maker/bin/maker2zff -n -d "$data"

#merge fasta files
echo "#################"
date
echo "merge fasta file"
echo "#################"
/storage/compevolbiol/software/Maker/maker/bin/fasta_merge -d "$data"

#merge gff files
echo "#################"
date
echo "merge gff file"
echo "#################"
/storage/compevolbiol/software/Maker/maker/bin/gff3_merge -d "$data"
