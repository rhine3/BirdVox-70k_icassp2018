import os
import sys

sys.path.append("../src")
import localmodule


# Define constants.
units = localmodule.get_units()
augmentations = localmodule.get_augmentations()
script_name = "019_compute-scattering-snowball.py"
script_path = os.path.join("..", "..", "..", "src", script_name)


# Create folders.
sbatch_dir = os.path.join(script_name[:-3], "sbatch")
os.makedirs(sbatch_dir, exist_ok=True)
slurm_dir = os.path.join(script_name[:-3], "slurm")
os.makedirs(slurm_dir, exist_ok=True)
file_path = os.path.join(sbatch_dir, script_name[:3] + ".sh")


# Loop over augmentations.
for aug_str in augmentations:
    n_instances = augmentations[aug_str]

    # Loop over instances.
    for instance_id in range(n_instances):
        instance_str = str(instance_id)

        if aug_str == "original":
            instanced_aug_str = aug_str
        else:
            instanced_aug_str = "_".join([aug_str, instance_str])

        # Loop over recording units.
        for unit_str in units:
            job_name = "_".join(["019", instanced_aug_str, unit_str])
            file_name = os.path.join(script_name[:-3], job_name + ".sbatch")
            script_list = [script_path, aug_str, instance_str, unit_str]
            script_path_with_args = " ".join(script_list)
            slurm_path = os.path.join("..", "slurm",
                "slurm_" + job_name + "_%j.out")
            with open(file_name, "w") as f:
                f.write("#!/bin/bash\n")
                f.write("\n")
                f.write("#BATCH --job-name=" + job_name + "\n")
                f.write("#SBATCH --nodes=1\n")
                f.write("#SBATCH --tasks-per-node=1\n")
                f.write("#SBATCH --cpus-per-task=1\n")
                f.write("#SBATCH --time=12:00:00\n")
                f.write("#SBATCH --mem=1GB\n")
                f.write("#SBATCH --output=" + slurm_path + "\n")
                f.write("\n")
                f.write("module purge\n")
                f.write("\n")
                f.write("# The first argument is the name of the augmentation.\n")
                f.write("# The second argument is the instance ID of the augmentation.\n")
                f.write("# The third argument is the name of the recording unit.\n")
                f.write("python " + script_path_with_args)
