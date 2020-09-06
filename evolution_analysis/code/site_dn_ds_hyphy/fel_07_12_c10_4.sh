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
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3026_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3026_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3026.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2482_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2482_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2482.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1833_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1833_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1833.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2392_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2392_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2392.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1935_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1935_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1935.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2782_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2782_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2782.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3532_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3532_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3532.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2306_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2306_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2306.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1402_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1402_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1402.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2415_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2415_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2415.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2135_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2135_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2135.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2492_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2492_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2492.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2667_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2667_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2667.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3210_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3210_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3210.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2624_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2624_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2624.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3152_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3152_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3152.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2361_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2361_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2361.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3319_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3319_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3319.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3252_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3252_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3252.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2596_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2596_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2596.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1737_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1737_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1737.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2745_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2745_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2745.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2355_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2355_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2355.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2056_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2056_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2056.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1714_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1714_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1714.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2662_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2662_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2662.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2964_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2964_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2964.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2852_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2852_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2852.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2502_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2502_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2502.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2769_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2769_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2769.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3040_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3040_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3040.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3248_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3248_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3248.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2949_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2949_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2949.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2525_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2525_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2525.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3142_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3142_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3142.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3268_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3268_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3268.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2708_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2708_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2708.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3129_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3129_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3129.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2858_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2858_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2858.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2547_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2547_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2547.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3239_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3239_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3239.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2953_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2953_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2953.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3279_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3279_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3279.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2079_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2079_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2079.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2860_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2860_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2860.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2603_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2603_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2603.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3198_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3198_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3198.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2686_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2686_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2686.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2443_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2443_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2443.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2078_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2078_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2078.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2380_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2380_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2380.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2133_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2133_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2133.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2955_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2955_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2955.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2333_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2333_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2333.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1790_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1790_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1790.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2496_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2496_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2496.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2506_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2506_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2506.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2055_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2055_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2055.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1933_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1933_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1933.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2111_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2111_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2111.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2178_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2178_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2178.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3207_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3207_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3207.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2856_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2856_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2856.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3068_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3068_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3068.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1715_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1715_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1715.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2183_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2183_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2183.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2725_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2725_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2725.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1797_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1797_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1797.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3098_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3098_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3098.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3121_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3121_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3121.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2438_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2438_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2438.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1459_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1459_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1459.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2961_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2961_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2961.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1720_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1720_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1720.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2029_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2029_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2029.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3517_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3517_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3517.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2606_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2606_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2606.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2567_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2567_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2567.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2872_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2872_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2872.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2051_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2051_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2051.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2204_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2204_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2204.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2601_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2601_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2601.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2233_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2233_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2233.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1788_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1788_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1788.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2130_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2130_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2130.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2873_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2873_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2873.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1828_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1828_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1828.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1840_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1840_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1840.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3257_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3257_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3257.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2641_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2641_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2641.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2469_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2469_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2469.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3062_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3062_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3062.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2141_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2141_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2141.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1789_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1789_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1789.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2189_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2189_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2189.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3374_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3374_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3374.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2515_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2515_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2515.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2614_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2614_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2614.FEL.json & 
wait