# Annotation stragegy for Drosera, Aldrovanda and Dionaea

We will use the same workflow for all three plant genomes. We decided for an
iterative approach with MAKER, which is outlined in the following section:

## MAKER pipeline

### preliminary steps

- Cufflinks
  + using the scripts provided here
  + mapping of RNAseq reads to the assembly with tophat2 (or better STAR?)
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

running MAKER with the options specified in first-iteration_opts.ctl
Lines different from the default file:

- genome: <add path to genome assembly>
- est_gff: <add path to cufflinks output>
- protein: paths to swissprot, quinoa and amaranth proteins
- augustus_species: arabidopsis
- est2genome: 1
- protein2genome: 1
- cpus: 40
- min_contig: 10000


### snap training

trainig a snap HMM based on the resulting gff file from the first MAKER run

### second MAKER run

using MAKER to reannotate the genome with snap. Parameters in second-iteration_opts.ctl
Lines different from the default file:

- genome: <add path to genome assembly>
- maker_gff: <add path to previous results>
- est_pass: 1
- snaphmm: <add path to snap HMM>
- cpus: 40
- min_contig: 10000