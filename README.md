# OCDeepCodes_1904.05657 fix bug in matlab 2015B

This directory contains matlab scripts and functions used to generate the numerical tests 
of the paper  

Martin Benning, Elena Celledoni, Matthias J. Ehrhardt, Brynjulf Owren, Carola-Bibiane Schönlieb:
Deep learning as optimal control problems: models and numerical methods (2019).

The code falls naturally into three parts

1The generation of data. One must first run gen_and_save_data.m to generate the input data used in these experiments. This script creates a directory InitialData where input files are placed.
2The learning script runlearn.m. This script uses the input files in 1 and creates a directory LearnedData-sxxxx where xxxx is the seed value used (4656 in the paper).  This script may take a rather long time to run and it generates some output to the screen that shows the progress
3Finally one may generate some plots by using snapshot_plot.m that calls snap.m to produce large amounts graphics. This script uses the learned parameters and cannot be used before runlearn.m has been executed.

