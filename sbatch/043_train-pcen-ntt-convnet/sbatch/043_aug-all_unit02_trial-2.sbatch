#!/bin/bash

#BATCH --job-name=043_aug-all_unit02_trial-2
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=24:00:00
#SBATCH --mem=8GB
#SBATCH --output=../slurm/slurm_043_aug-all_unit02_trial-2_%j.out

module purge

# The first argument is the name of the recording unit.
# The second argument is the duration of background.
python ../../../src/043_train-pcen-ntt-convnet.py all unit02 2