# This shell script executes Slurm jobs for thresholding
# predictions of NTT-like convolutional
# neural network on BirdVox-70k full audio
# with logmelspec input.
# Augmentation kind: all-but-noise.
# Test unit: unit05.
# Trial ID: 9.

sbatch 042_aug-all-but-noise_test-unit05_predict-unit05_trial-9.sbatch
sbatch 042_aug-all-but-noise_test-unit05_predict-unit02_trial-9.sbatch
sbatch 042_aug-all-but-noise_test-unit05_predict-unit03_trial-9.sbatch
