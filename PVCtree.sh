#!/bin/bash
#SBATCH -p sched_mit_g4nier
#SBATCH -N 1
#SBATCH -n 12
#SBATCH -t 4-00:00:00
#SBATCH --mem=30G
#SBATCH -J PVCtree
#SBATCH -o PVCtree.out
#SBATCH -e PVCtree.err
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mail-user=payette@mit.edu

/nobackup1c/users/payette/iqtree-2.1.2-Linux/bin/iqtree2 -nt AUTO -ntmax 10 -s alignments/ -m MFP -mrate E,I,G4,I+G4,R4,I+G+R4 -madd LG4X,LG4M -keep-ident -pre PVCtree_2_1_22 -safe -mem 15G -alrt 1000 -bb 1000 -abayes