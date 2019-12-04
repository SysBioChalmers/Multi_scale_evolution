#!/bin/bash
cd /Users/luho/Documents/paml_yn00
for i in yn00*;
do yn00 $i &
done;
wait