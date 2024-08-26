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