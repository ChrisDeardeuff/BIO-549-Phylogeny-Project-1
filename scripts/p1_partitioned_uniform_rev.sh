#!/bin/bash

#SBATCH -N 1            # number of nodes
#SBATCH -n 1            # number of cores
#SBTACH --mem=32G           # memory == 32 gigabytes
#SBATCH -t 0-04:00:00   # time in d-hh:mm:ss == 4 hours
#SBATCH -p general      # partition 
#SBATCH -q public       # QOS
#SBATCH --job-name=p1_partitioned_codon_rev
#SBATCH -o slurm.%j.out # file to save job's STDOUT (%j = JobId)
#SBATCH -e slurm.%j.err # file to save job's STDERR (%j = JobId)
#SBATCH --mail-user=cdeardeu@asu.edu       # notify email
#SBATCH --export=NONE   # Purge the job-submitting shell environment

module purge
module load revbayes/1.2.2

# to enter RevBayes
rb mcmc_Partition_uniform.Rev
