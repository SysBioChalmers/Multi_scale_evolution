python scripts/cafetutorial_clade_and_size_filter.py -i substrate_gene_family.txt -o substrate_filtered_input.txt -s

cafe cafe_run_substrate.sh

#filter clusters with p vaplue less than 0.05 ,then get overall expansion and constraction statistics
cat reports_substrate/report_run.cafe |awk -F '\t' '$3<0.05' > reports_substrate/report_run.p.cafe

python scripts/cafetutorial_report_analysis.py -i reports_substrate/report_run.p.cafe -o reports_substrate/summary_run

# To know the detailed gene families that had been contracted or expanded
python scripts/cafetutorial_report_analysis.py -r 0 -i reports_substrate/report_run.p.cafe -o reports_substrate/summary_run