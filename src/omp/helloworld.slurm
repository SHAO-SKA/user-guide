#!/bin/bash

#SBATCH --job-name=hello_world
#SBATCH --partition=small
#SBATCH --output=%j.out
#SBATCH --error=%j.err
#SBATCH -n 8
#SBATCH --ntasks-per-node=8

ulimit -l unlimited
ulimit -s unlimited

module load gcc

export OMP_NUM_THREADS=8
./hello_world