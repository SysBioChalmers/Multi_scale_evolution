#!/bin/bash
#SBATCH -A C3SE2020-1-8
#SBATCH -N 1
#SBATCH -n 20
#SBATCH -o out.txt
#SBATCH -t 7-00:00:00
#SBATCH --mail-user=luho@chalmers.se
#SBATCH --mail-type=end
module load GCC/8.3.0
module load CUDA/10.1.243
module load OpenMPI/3.1.4
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG5599_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG5599_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG5599.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3500_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3500_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3500.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG7449_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG7449_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG7449.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG5328_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG5328_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG5328.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG5521_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG5521_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG5521.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG5349_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG5349_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG5349.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG5907_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG5907_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG5907.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG4516_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG4516_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG4516.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG5595_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG5595_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG5595.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG5080_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG5080_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG5080.ABSREL.json & 
wait
wait
