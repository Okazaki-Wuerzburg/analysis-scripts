#!/bin/bash

export PATH="/storage/compevolbiol/software/genometools/genometools-1.5.9/bin/":$PATH

file1=$1
file2=$2


echo "###################"
date
echo "sort gff files"
echo "###################"

gt gff3 -sort "$file1" > "$file1".sorted
gt gff3 -sort "$file2" > "$file2".sorted

echo "###################"
date
echo "stats for $file1"
echo "###################"

gt stat "$file1"


echo "###################"
date
echo "stats for $file2"
echo "###################"

gt stat "$file2"


echo "###################"
date
echo "pairwise comparison"
echo "###################"

gt eval "$file1".sorted "$file2".sorted
