#!/bin/bash

#using canu version 1.5

canu -p av-canu -d canu-default-out genomeSize=500m gnuplot=/home/binf009/local/bin/gnuplot -pacbio-raw *.fastq
