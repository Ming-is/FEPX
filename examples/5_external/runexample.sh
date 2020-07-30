#!/bin/bash

# Run the `Running a Simulation with External Definition Files' example (`5_external') in FEPX
# - This bash script will copy the necessary mesh file from the external
#   directory `../mesh' by default. The mesh file may also be generated
#   using the provided `generate_mesh.sh' script if Neper is installed.
#
# - Executes FEPX with OpenMPI's `mpirun' on 2 processors by default.

# First, copy the mesh file into the directory. Comment this line if `generate_mesh.sh' is used.
cp ../mesh/simulation.msh .

# Then, run FEPX in parallel
mpirun -np 2 fepx

exit 0

# This script produces output files:
# - post.report
# - post.coo.*
# - post.ori.*
# - post.defrate-eq.*
# - post.force.*
# - post.work.*
