# This shell script executes Slurm jobs for training
# NTT convolutional neural network
# on BirdVox-70k with PCEN input.
# Trial ID: 3.
# Augmentation kind: all.

sbatch 043_aug-all_unit01_trial-3.sbatch
sbatch 043_aug-all_unit02_trial-3.sbatch
sbatch 043_aug-all_unit03_trial-3.sbatch
sbatch 043_aug-all_unit05_trial-3.sbatch
sbatch 043_aug-all_unit07_trial-3.sbatch
sbatch 043_aug-all_unit10_trial-3.sbatch
