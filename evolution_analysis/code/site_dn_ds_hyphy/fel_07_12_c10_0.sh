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
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2660_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2660_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2660.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2266_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2266_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2266.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2395_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2395_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2395.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1831_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1831_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1831.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2004_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2004_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2004.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2253_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2253_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2253.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2304_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2304_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2304.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3428_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3428_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3428.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2275_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2275_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2275.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2069_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2069_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2069.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2350_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2350_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2350.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2181_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2181_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2181.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2447_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2447_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2447.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2090_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2090_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2090.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2165_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2165_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2165.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2978_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2978_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2978.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2003_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2003_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2003.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1973_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1973_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1973.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1829_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1829_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1829.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2376_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2376_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2376.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1909_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1909_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1909.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2770_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2770_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2770.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2706_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2706_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2706.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2028_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2028_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2028.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2795_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2795_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2795.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1848_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1848_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1848.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3453_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3453_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3453.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2018_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2018_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2018.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1845_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1845_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1845.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2529_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2529_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2529.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3110_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3110_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3110.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1546_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1546_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1546.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1664_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1664_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1664.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2793_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2793_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2793.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3448_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3448_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3448.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2199_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2199_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2199.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2080_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2080_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2080.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2639_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2639_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2639.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1839_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1839_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1839.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2944_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2944_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2944.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3245_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3245_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3245.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1843_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1843_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1843.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2883_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2883_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2883.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1647_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1647_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1647.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1987_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1987_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1987.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1953_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1953_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1953.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1620_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1620_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1620.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1834_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1834_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1834.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3446_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3446_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3446.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3016_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3016_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3016.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2772_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2772_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2772.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3572_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3572_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3572.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1918_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1918_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1918.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3250_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3250_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3250.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3083_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3083_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3083.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2113_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2113_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2113.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1903_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1903_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1903.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2987_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2987_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2987.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2053_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2053_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2053.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2929_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2929_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2929.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2421_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2421_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2421.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2473_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2473_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2473.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2920_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2920_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2920.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3614_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3614_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3614.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1906_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1906_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1906.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2505_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2505_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2505.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2127_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2127_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2127.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2434_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2434_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2434.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2884_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2884_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2884.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2895_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2895_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2895.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3219_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3219_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3219.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2767_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2767_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2767.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1846_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1846_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1846.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3080_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3080_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3080.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1817_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1817_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1817.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1770_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1770_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1770.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2527_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2527_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2527.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2478_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2478_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2478.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2424_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2424_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2424.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2390_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2390_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2390.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3085_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3085_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3085.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1890_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1890_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1890.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2697_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2697_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2697.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3660_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3660_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3660.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1926_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1926_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1926.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1860_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1860_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1860.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1867_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1867_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1867.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1884_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1884_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1884.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1893_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1893_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1893.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2119_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2119_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2119.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1753_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1753_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1753.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1794_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1794_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1794.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2638_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2638_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2638.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2659_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2659_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2659.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2559_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2559_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2559.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2024_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2024_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2024.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1641_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1641_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1641.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1961_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1961_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1961.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2156_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2156_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2156.FEL.json & 
wait