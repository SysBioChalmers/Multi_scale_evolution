#!/bin/bash
cd /Users/luho/Documents/pan_genome/control_yn00
for i in yn00*;
do yn00 $i &
done;
wait