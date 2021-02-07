python scripts/cafetutorial_clade_and_size_filter.py -i yeast_gene_family.txt -o yeast_filtered_input.txt -s

cafe cafe_run_all.sh

#filter clusters with p vaplue less than 0.05 ,then get overall expansion and constraction statistics
cat reports/report_run1.cafe |awk -F '\t' '$3<0.05' > reports/report_run1.p.cafe

python scripts/cafetutorial_report_analysis.py -i reports/report_run1.p.cafe -o reports/summary_run1

# To know the detailed gene families that had been contracted or expanded
python scripts/cafetutorial_report_analysis.py -r 0 -i reports/report_run1.p.cafe -o reports/summary_run1