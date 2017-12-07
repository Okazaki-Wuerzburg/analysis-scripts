# Annotation stragegy for Drosera, Aldrovanda and Dionaea

We will use the same workflow for all three plant genomes. We decided for an
iterative approach with MAKER, which is outlined in the following section:

## MAKER pipeline

### preliminary steps

- Cufflinks
  + using the scripts provided here
  + mapping of RNAseq reads to the assembly with tophat2
  + analysing the mapping with cufflinks
  + result: the cufflinks gff file
- databases
  + swissprot plant proteins
  + quinoa proteins
  + amaranth proteins
- augustus
  + we will not use a de-novo training
  + we will use the pretrained Arabidopsis data


### first MAKER run

running MAKER with the options specified in <ctl-file-name-here>
- est_gff: cufflinks output
- alt_proteins: swissprot, quinoa, amaranth
- augustus: Arabidopsis

### snap training

trainig a snap HMM based on the resulting gff file from the first MAKER run

### second MAKER run

using MAKER to reannotate the genome with snap. Parameters in <ctl-file-name-here>
- maker_gff: the previous results
- snap: the trained snap HMM
