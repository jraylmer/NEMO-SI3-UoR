#!/bin/bash

#SBATCH --ntasks=8
#SBATCH --cpus-per-task=1
#SBATCH --threads-per-core=1
#SBATCH --nodes=1-1
#SBATCH --mem=32G
#SBATCH --job-name=EXP01
#SBATCH --output=%x-%j.out
#SBATCH --time=00:30:00

# Prepare environment:
module purge
module load mpi/openmpi-x86_64

export OMPI_MCA_fs_ufs_lock_algorithm=1
export HDF5_USE_FILE_LOCKING=FALSE

mpirun ./nemo
