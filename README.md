# how_to_UofC_ARC
How to use ARC in the university of Calgary

This is a guide on how to use ARC. Reference: https://rcs.ucalgary.ca/ARC_Cluster_Guide

Steps on using ARC:
* Gaining access from support@hpc.ucalgary.ca
* Having a VPN if you're working off-campus (University of Calgary General VPN)
* Installing a code editor such as MobaXterms or VScode. Personall preference: have both. For downloading and file organization MobaXTerms is much better than VScode. VScode on the other hand is more useful for coding.
* Add the ARC cluster SSH to your environment.
* Enter your account.
* Build a new environment (conda create -n <your envir>)
* Install packages (conda install <...>)
* Check Python version (which python)
* Upload your .py code and your files.
* Create a job with the .slurm extention and UNIX format. One sample is attached to this directory.
* In the job,
  * you can define a base directory, and define all the different paths, or do them in the code.
  * Make sure to use the correct partition based on [the partition configurations]([url](https://rcs.ucalgary.ca/ARC_Cluster_Guide#Selecting_a_Partition)).
  * For GPU utilization, make sure to install related libraries like Tensorflow GPU version or Pytorch.

A sample of a job
```
#!/bin/bash
   ####### Reserve computing resources #############
   
#SBATCH --job-name=finbert
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem=100GB
#SBATCH --time=0-20:00:00
#SBATCH --gres=gpu:1
#SBATCH --partition=kaby



   ####### Set environment variables ###############
module load python/3.10.4


HOME_DIR="/home/user_name/project"
OUTPUT_DIR="${HOME_DIR}/output"
METHOD="BERT"

# Add the home directory to PYTHONPATH
export PYTHONPATH="${HOME_DIR}:$PYTHONPATH"

echo "Working on ${METHOD}............................................"

   ####### Run your script #########################
python "${HOME_DIR}/${METHOD}/code.py" --output_dir ${OUTPUT_DIR} --method ${METHOD}
echo "job finished!"
```

In case you don't need GPU, make sure to remove teh GPU specification line.
