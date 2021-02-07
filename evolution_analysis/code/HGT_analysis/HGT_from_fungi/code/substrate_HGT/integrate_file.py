#!/usr/bin/env python
# -*- coding: utf-8 -*-

# This script is to merge all the Blast files into one file named blastfile.txt

import os

mergefiledir = os.getcwd()
# print(mergefiledir)

filenames = os.listdir(mergefiledir)
print(filenames)

file = open('blastfile.txt', 'w')

for filename in filenames :
	if filename.startswith('gain_OG') :
		print(filename)
		filepath = mergefiledir+'/'+filename
		print(filepath)
		for line in open(filepath) :
			file.writelines(line)
		# file.write('\n')

file.close()
