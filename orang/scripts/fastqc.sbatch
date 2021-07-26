#!/bin/bash
#SBATCH --job-name=fastqc
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=%u@colorado.edu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=2GB
#SBATCH --time=02:00:00
#SBATCH --partition=short
#SBATCH --output=/Users/keme4516/txpnevol/orang/eofiles/%x.%j.out
#SBATCH --error=/Users/keme4516/txpnevol/orang/eofiles/%x.%j.err

INDIR=/Users/keme4516/txpnevol/orang/interspecies-nutlin
OUTDIR=/Users/keme4516/txpnevol/orang/fastqc
module purge

####### LOAD MODULES #########################

module load fastqc/0.11.5

####### PRINT JOB INFO #######################

printf "\nRunnin runnin runnin"

####### RUN JOB ##############################

fastqc ${INDIR}/*.fastq.gz -o ${OUTDIR}



