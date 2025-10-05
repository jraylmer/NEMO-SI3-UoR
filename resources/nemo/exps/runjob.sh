#!/bin/bash

#SBATCH --ntasks=8
#SBATCH --cpus-per-task=1
#SBATCH --threads-per-core=1
#SBATCH --nodes=1-1
#SBATCH --mem=16G
#SBATCH --job-name=EXP01
#SBATCH --output=%x-%j.out
#SBATCH --time=00:30:00

module load mpi/openmpi-x86_64

# Do not use srun: the version of OpenMPI on RACC2 does not support it and
# mpiexec is recommended by OpenMPI anyway:
mpiexec ./nemo

