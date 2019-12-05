#!/bin/bash
cd /Users/luho/Documents/site_data
for i in *.pml
do
	python /Users/luho/Desktop/example/code/site_dn_ds/7_produce_control_file.py -n /Users/luho/Documents/site_data/$i -t /Users/luho/Documents/site_data/${i%.pml}.tree -c /Users/luho/Documents/PAML/site_model/ -o /Users/luho/Documents/paml_result/${i%.pml}.out
	codeml /Users/luho/Documents/PAML/site_model/M0/codeml_test.ctl
	codeml /Users/luho/Documents/PAML/site_model/M1a/codeml_test.ctl
	codeml /Users/luho/Documents/PAML/site_model/M2a/codeml_test.ctl
	codeml /Users/luho/Documents/PAML/site_model/M3/codeml_test.ctl
	codeml /Users/luho/Documents/PAML/site_model/M7/codeml_test.ctl
	codeml /Users/luho/Documents/PAML/site_model/M8/codeml_test.ctl
	codeml /Users/luho/Documents/PAML/site_model/M8a/codeml_test.ctl
done

