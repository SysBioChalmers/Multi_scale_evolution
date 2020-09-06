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
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2134_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2134_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2134.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2930_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2930_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2930.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2887_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2887_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2887.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1594_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1594_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1594.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2568_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2568_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2568.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3454_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3454_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3454.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1412_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1412_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1412.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1740_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1740_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1740.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2827_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2827_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2827.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1511_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1511_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1511.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1977_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1977_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1977.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2783_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2783_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2783.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2723_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2723_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2723.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1481_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1481_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1481.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1825_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1825_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1825.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2102_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2102_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2102.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2513_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2513_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2513.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2299_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2299_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2299.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3413_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3413_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3413.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1480_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1480_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1480.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2533_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2533_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2533.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3680_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3680_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3680.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2281_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2281_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2281.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2309_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2309_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2309.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3159_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3159_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3159.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3054_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3054_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3054.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1974_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1974_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1974.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1514_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1514_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1514.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3104_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3104_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3104.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3312_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3312_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3312.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3519_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3519_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3519.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3128_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3128_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3128.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2916_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2916_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2916.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2844_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2844_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2844.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3042_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3042_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3042.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2371_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2371_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2371.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2334_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2334_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2334.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2800_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2800_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2800.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3049_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3049_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3049.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2131_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2131_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2131.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1856_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1856_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1856.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3236_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3236_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3236.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1773_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1773_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1773.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2426_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2426_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2426.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1404_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1404_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1404.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2301_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2301_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2301.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1721_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1721_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1721.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1658_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1658_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1658.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2114_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2114_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2114.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2491_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2491_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2491.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2459_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2459_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2459.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3292_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3292_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3292.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1589_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1589_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1589.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3262_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3262_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3262.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2970_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2970_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2970.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2027_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2027_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2027.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3282_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3282_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3282.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2222_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2222_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2222.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2535_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2535_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2535.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2498_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2498_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2498.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1826_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1826_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1826.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3172_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3172_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3172.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2511_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2511_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2511.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2201_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2201_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2201.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3182_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3182_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3182.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2034_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2034_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2034.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2059_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2059_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2059.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3255_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3255_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3255.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2796_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2796_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2796.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2960_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2960_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2960.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1943_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1943_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1943.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2869_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2869_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2869.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1886_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1886_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1886.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2562_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2562_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2562.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2121_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2121_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2121.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2231_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2231_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2231.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2719_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2719_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2719.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2577_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2577_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2577.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2999_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2999_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2999.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2125_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2125_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2125.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2830_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2830_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2830.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2239_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2239_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2239.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3105_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3105_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3105.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3410_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3410_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3410.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2273_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2273_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2273.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2616_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2616_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2616.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2673_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2673_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2673.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2536_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2536_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2536.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3163_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3163_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3163.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3274_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3274_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3274.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2560_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2560_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2560.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2191_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2191_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2191.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2675_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2675_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2675.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG2428_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG2428_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG2428.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3215_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3215_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3215.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG3193_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG3193_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG3193.FEL.json & 
wait
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1861_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1861_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1861.FEL.json & 
mpirun -np 20 HYPHYMPI LIBPATH=/cephyr/users/luho/Hebbe/hyphy/res/ /cephyr/users/luho/Hebbe/hyphy/res/TemplateBatchFiles/SelectionAnalyses/FEL.bf --alignment /cephyr/users/luho/Hebbe/cds_align_guidance_new/OG1351_code.fasta --tree /cephyr/users/luho/Hebbe/cds_align_guidance_new_tree_unroot/OG1351_aa_unroot.tre --srv Yes --pvalue 0.1 --output /cephyr/users/luho/Hebbe/fel_result/OG1351.FEL.json & 
wait