# make sure that you have successfully installed miniconda
conda -V
# conda 23.1.

##1. how to run R in Linux
#1. create a conda env named "R4.3", and install r-base=4.3.1(name of env and version of r-base is optional)
conda create -n R4.3 r-base=4.3.1
#2. activate your env
conda activate R4.3
#3. Edit R script in R-server or vim, and give +x permissions to the script
vim test.R
---------for example------------
A = 1
B = 1
print(A + B)
--------------------------------
chmod +x test.R
#4. run your R script
Rscript test.R

##2. how to run R in Linux by shell script
#1. the same steps in ##1. how to run R in Linux(1.2.3)
#2. edit shell script
vim test.sh
-----------------------------
#!/bin/bash
path/to/Rscript path/to/test.R
-----------------------------
#3. run you shell script
sh test.sh

##3. libpath() related tips
#1. do not change the ~/.Rprofile easily
#2. .libpath("path/to/env/.../library")
