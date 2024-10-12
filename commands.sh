#!/bin/bash

#make coordinate file
zcat mapped.bed.gz | awk '{print int(((($9+$10)/2)-$3)*1000/($4-$3)),"\t",$12}' > coords.tsv 

#create matrix
cat coords.tsv | python data_to_matrix.py > matrix.csv

#clean matrix for gnuplot
tr -d '[,]' < matrix.csv > clean_matrix.dat

#plot using gnuplot
gnuplot gnuplot.gp 
