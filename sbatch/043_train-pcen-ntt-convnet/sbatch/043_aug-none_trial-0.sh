# This shell script executes Slurm jobs for training
# NTT convolutional neural network
# on BirdVox-70k with PCEN input.
# Trial ID: 0.
# Augmentation kind: none.

sbatch 043_aug-none_unit01_trial-0.sbatch
sbatch 043_aug-none_unit02_trial-0.sbatch
sbatch 043_aug-none_unit03_trial-0.sbatch
sbatch 043_aug-none_unit05_trial-0.sbatch
sbatch 043_aug-none_unit07_trial-0.sbatch
sbatch 043_aug-none_unit10_trial-0.sbatch
