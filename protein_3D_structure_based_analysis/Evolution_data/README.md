# Yeastspot3D
This repository contains R scripts for package Yeastspot3D.
* Last update: 2019-06-12

## Overview
The Yeastspot3D package allows for mutation mapping analysis for yeast based on protein 3D structure in an easy and flexible way. It could not only explore mutation distribution on the structure as a whole, but also provides HotSpot analysis within a protein structure.

## Yeastspot3D paper

Title:
Yeastspot3D: an R package to explore yeast mutation hotspot distribution within protein 3D structures

Author:
Hongzhong Lu, Eduard J Kerkhoven, Jens Nielsen

Abstract:
Background: Accumulation of high-quality protein structures make it possible to explore the functional mutation through mapping non-synonymous single nucleotide polymorphisms (nsSNPs) onto the protein 3D structures. Such a structure-guided analysis can provide valuable insights into the relationship between region-specific residue variation and protein function. There are several popular mutation cluster analysis tools for human proteins, e.g. HotSpot3D and mutation3D. However, there no tools especially designed for nsSNP mapping analysis in the model eukaryote Saccharomyces cerevisiae. As a mutation cluster analysis based on protein 3D structures requires genome annotation, coordinates conversion and the calculation of protein structures’ parameters, it is essential to develop a toolbox specially for S. cerevisiae.
Results: Here we developed the R package - Yeastspot3D, which provides an easy and comprehensive framework to do the mutation cluster analysis for yeast through integrating the genome annotation, protein structure quality analysis and mutation cluster analysis together.  It provides two complementary options to conduct the mutation cluster analysis, which are mutation enrichment analysis and mutation hotspot analysis. With Yeastspot3D, the proteins with significant mutation enrichment or mutation hotspots can be identified.
Conclusions: Yeastspot3D makes it convenient to conduct the functional mutation cluster analysis using protein 3D structures for S .cerevisiae and it could meet the general demand of mutation cluster analysis in yeast proteins for a wide research community.
Keywords: Protein 3D structure,  structure bioinformatics, Saccharomyces cerevisiae, mutation hotspot

This paper is in preparation and will be publised soon!


## Installation

To get the current development version from github:

```R
# install.packages("devtools")
devtools::install_github("hongzhonglu/Yeastspot3D")
```


## Usage

The detailed tutorial to use Yeastspot3D could be found in https://github.com/hongzhonglu/Tutorial_for_Yeastspot3D.


## Contributors

This repository is administered by Hongzhong Lu ([@hongzhonglu](https://github.com/hongzhonglu)), Division of Systems and Synthetic Biology, Department of Biology and Biological Engineering, Chalmers University of Technology.
