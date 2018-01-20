# This shell script executes Slurm jobs for running predictions
# with NTT-like convolutional neural network
# on BirdVox-70k with PCEN input.
# Trial ID: 5.
# Augmentation kind: all-but-noise.

sbatch 047_aug-all-but-noise_test-unit01_trial-5_predict-unit07.sbatch
sbatch 047_aug-all-but-noise_test-unit01_trial-5_predict-unit10.sbatch
sbatch 047_aug-all-but-noise_test-unit01_trial-5_predict-unit01.sbatch

sbatch 047_aug-all-but-noise_test-unit02_trial-5_predict-unit10.sbatch
sbatch 047_aug-all-but-noise_test-unit02_trial-5_predict-unit01.sbatch
sbatch 047_aug-all-but-noise_test-unit02_trial-5_predict-unit02.sbatch

sbatch 047_aug-all-but-noise_test-unit03_trial-5_predict-unit01.sbatch
sbatch 047_aug-all-but-noise_test-unit03_trial-5_predict-unit02.sbatch
sbatch 047_aug-all-but-noise_test-unit03_trial-5_predict-unit03.sbatch

sbatch 047_aug-all-but-noise_test-unit05_trial-5_predict-unit02.sbatch
sbatch 047_aug-all-but-noise_test-unit05_trial-5_predict-unit03.sbatch
sbatch 047_aug-all-but-noise_test-unit05_trial-5_predict-unit05.sbatch

sbatch 047_aug-all-but-noise_test-unit07_trial-5_predict-unit03.sbatch
sbatch 047_aug-all-but-noise_test-unit07_trial-5_predict-unit05.sbatch
sbatch 047_aug-all-but-noise_test-unit07_trial-5_predict-unit07.sbatch

sbatch 047_aug-all-but-noise_test-unit10_trial-5_predict-unit05.sbatch
sbatch 047_aug-all-but-noise_test-unit10_trial-5_predict-unit07.sbatch
sbatch 047_aug-all-but-noise_test-unit10_trial-5_predict-unit10.sbatch

