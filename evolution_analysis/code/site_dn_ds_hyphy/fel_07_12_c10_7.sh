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
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1771_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1771_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1771.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2329_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2329_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2329.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2320_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2320_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2320.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2341_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2341_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2341.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2067_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2067_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2067.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2576_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2576_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2576.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3520_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3520_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3520.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3234_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3234_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3234.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3096_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3096_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3096.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3138_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3138_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3138.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2215_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2215_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2215.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3086_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3086_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3086.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3126_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3126_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3126.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3370_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3370_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3370.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3082_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3082_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3082.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1983_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1983_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1983.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2347_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2347_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2347.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3240_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3240_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3240.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2982_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2982_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2982.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2499_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2499_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2499.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3006_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3006_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3006.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2839_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2839_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2839.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2471_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2471_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2471.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2195_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2195_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2195.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2140_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2140_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2140.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2534_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2534_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2534.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1928_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1928_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1928.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2623_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2623_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2623.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1625_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1625_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1625.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3391_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3391_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3391.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3675_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3675_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3675.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2689_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2689_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2689.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1668_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1668_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1668.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2707_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2707_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2707.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3534_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3534_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3534.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2665_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2665_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2665.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2109_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2109_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2109.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2314_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2314_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2314.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2277_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2277_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2277.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2501_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2501_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2501.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2646_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2646_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2646.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2367_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2367_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2367.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3299_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3299_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3299.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2902_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2902_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2902.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1885_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1885_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1885.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2512_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2512_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2512.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3014_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3014_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3014.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2915_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2915_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2915.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2030_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2030_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2030.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2572_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2572_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2572.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2483_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2483_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2483.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3153_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3153_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3153.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2967_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2967_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2967.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2743_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2743_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2743.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2182_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2182_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2182.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2755_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2755_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2755.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2193_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2193_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2193.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2813_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2813_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2813.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2886_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2886_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2886.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2466_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2466_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2466.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3205_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3205_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3205.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2274_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2274_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2274.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2912_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2912_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2912.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2651_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2651_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2651.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1970_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1970_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1970.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1835_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1835_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1835.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2292_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2292_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2292.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2691_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2691_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2691.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2091_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2091_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2091.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1531_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1531_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1531.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3064_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3064_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3064.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2894_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2894_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2894.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2526_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2526_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2526.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2716_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2716_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2716.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2738_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2738_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2738.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1934_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1934_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1934.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2449_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2449_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2449.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3275_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3275_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3275.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2832_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2832_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2832.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2934_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2934_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2934.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2184_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2184_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2184.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1712_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1712_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1712.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1936_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1936_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1936.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3400_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3400_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3400.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1971_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1971_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1971.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2558_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2558_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2558.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3414_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3414_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3414.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2508_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2508_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2508.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2063_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2063_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2063.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2740_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2740_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2740.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1569_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1569_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1569.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3301_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3301_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3301.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3443_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3443_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3443.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2748_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2748_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2748.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1927_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1927_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1927.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2519_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2519_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2519.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3399_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3399_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3399.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2043_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2043_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2043.FEL.json & 
wait