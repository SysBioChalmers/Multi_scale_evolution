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
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1839_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1839_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1839.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3296_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3296_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3296.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2673_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2673_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2673.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3100_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3100_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3100.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG4490_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG4490_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG4490.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3340_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3340_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3340.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2599_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2599_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2599.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2479_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2479_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2479.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2388_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2388_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2388.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2868_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2868_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2868.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1494_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1494_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1494.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2282_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2282_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2282.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2258_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2258_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2258.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1595_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1595_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1595.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2573_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2573_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2573.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2460_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2460_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2460.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG4712_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG4712_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG4712.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2785_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2785_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2785.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3620_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3620_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3620.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1272_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1272_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1272.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2833_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2833_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2833.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2098_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2098_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2098.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3515_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3515_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3515.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2817_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2817_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2817.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1506_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1506_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1506.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2201_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2201_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2201.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1358_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1358_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1358.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2989_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2989_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2989.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2438_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2438_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2438.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3963_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3963_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3963.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG4265_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG4265_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG4265.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2130_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2130_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2130.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2527_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2527_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2527.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3697_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3697_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3697.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2242_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2242_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2242.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1723_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1723_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1723.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2740_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2740_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2740.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG4577_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG4577_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG4577.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3531_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3531_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3531.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG4086_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG4086_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG4086.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2288_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2288_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2288.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG4062_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG4062_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG4062.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2688_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2688_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2688.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2879_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2879_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2879.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2950_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2950_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2950.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3688_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3688_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3688.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3621_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3621_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3621.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3663_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3663_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3663.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1942_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG1942_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG1942.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2541_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2541_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2541.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2910_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2910_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2910.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2312_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2312_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2312.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG4754_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG4754_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG4754.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG4944_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG4944_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG4944.ABSREL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2357_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG2357_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG2357.ABSREL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/aBSREL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3028_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot_label/OG3028_aa_unroot_LABEL.tre --branches Foreground --output /cephyr/users/luho/Hebbe/absrel_result/OG3028.ABSREL.json & 
wait