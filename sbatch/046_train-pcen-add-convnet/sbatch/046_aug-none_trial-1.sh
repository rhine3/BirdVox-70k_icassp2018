# This shell script executes Slurm jobs for training
# NTT convolutional neural network
# on BirdVox-70k with PCEN input.
# Trial ID: 1.
# Augmentation kind: none.

sbatch 046_aug-none_unit01_trial-1.sbatch
sbatch 046_aug-none_unit02_trial-1.sbatch
sbatch 046_aug-none_unit03_trial-1.sbatch
sbatch 046_aug-none_unit05_trial-1.sbatch
sbatch 046_aug-none_unit07_trial-1.sbatch
sbatch 046_aug-none_unit10_trial-1.sbatch
