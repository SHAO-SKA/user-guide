#!/bin/bash
#SBATCH --job-name=workshop2023 #makes it easier to find in squeue
#SBATCH --partition=hw-32C768G # partition name
#SBATCH --nodes=1 # number of nodes
#SBATCH --cpus-per-task=6 #cores per process
#SBATCH --ntasks-per-node=1 #processes per node
#SBATCH --output=%u-%x-%j.out
#SBATCH --error=%u-%x-%j.err
#SBATCH --time=infinite #10:00:00 # walltime requested
#SBATCH --export=NONE
#SBATCH --comment=group_name # for charging
#SBATCH --nodelist=cpuN # cpuN is the name of the group 

hostname # execute my ./hello program