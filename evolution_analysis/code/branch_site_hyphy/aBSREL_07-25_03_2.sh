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
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2350_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2350_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2350.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG4055_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG4055_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG4055.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1382_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1382_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1382.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3696_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3696_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3696.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2671_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2671_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2671.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1352_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1352_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1352.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG4146_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG4146_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG4146.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG4074_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG4074_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG4074.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1763_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1763_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1763.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2583_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2583_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2583.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3167_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3167_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3167.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG4579_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG4579_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG4579.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2662_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2662_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2662.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2776_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2776_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2776.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2622_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2622_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2622.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG5036_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG5036_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG5036.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2508_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2508_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2508.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2694_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2694_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2694.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3441_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3441_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3441.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2959_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2959_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2959.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3465_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3465_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3465.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG4729_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG4729_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG4729.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG5549_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG5549_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG5549.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3257_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3257_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3257.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1149_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1149_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1149.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2101_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2101_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2101.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3791_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3791_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3791.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2939_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2939_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2939.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2922_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2922_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2922.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1885_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1885_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1885.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1941_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1941_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1941.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1759_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1759_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1759.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3092_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3092_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3092.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2972_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2972_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2972.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3898_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3898_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3898.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1733_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1733_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1733.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1174_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1174_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1174.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1393_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1393_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1393.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1444_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1444_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1444.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3221_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3221_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3221.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2358_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2358_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2358.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3805_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3805_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3805.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG4053_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG4053_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG4053.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2784_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2784_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2784.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1590_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1590_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1590.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1663_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1663_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1663.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG4106_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG4106_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG4106.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1729_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1729_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1729.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG4217_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG4217_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG4217.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2468_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2468_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2468.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG4258_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG4258_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG4258.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3715_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3715_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3715.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3022_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3022_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3022.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2212_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2212_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2212.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3348_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3348_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3348.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3220_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3220_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3220.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3240_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3240_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3240.ABSREL.json & 
wait
