#!/bin/bash

# Script to submit 1 job to the cluster

#SBATCH --job-name=transX       ## Name of the job.
#SBATCH -p gpu                  ## partition/queue name
#SBATCH --gres=gpu:1            ## Request 1 GPU
#SBATCH --nodes=1               ## (-N) number of nodes to use
#SBATCH --ntasks=1              ## (-n) number of tasks to launch
#SBATCH --cpus-per-task=8       ## number of CPU cores the job needs
# #SBATCH --mem=512G              ## memory

# Write the commands to be executed after resource allocation below:
conda activate openKE
python ./train_transr_FB15K237.py
