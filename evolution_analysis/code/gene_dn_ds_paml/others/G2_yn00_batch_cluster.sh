#!/bin/bash
cd /c3se/users/luho/Hebbe/data_prepare_PAML/paml_yn00
for i in yn00*;
do yn00 $i &
done;
wait