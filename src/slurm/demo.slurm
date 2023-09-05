#!/bin/bash
#SBATCH -J test              # job name: test
#SBATCH -p cpu               # submit to cpu partition
#SBATCH -N 1                 # use 1 node
#SBATCH --cpus-per-task=1    # use 1 cpu core per task
#SBATCH -t 5:00              # max running time is 5 minutes
#SBATCH -o test.out          # save the output to test.out
#SBATCH --comment=group_name # for charging

./hello                      # execute my ./hello program