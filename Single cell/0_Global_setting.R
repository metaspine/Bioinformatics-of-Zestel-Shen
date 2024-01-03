# Part0：Global setting
rm(list=ls()); # Optional, remove all objects in the current environment when start a new project
dir = "/work/chenfeilab/Olive/livermetastasis/data/all/1_qc"
Sys.setenv(LANGUAGE = "en"); # set the environment variable LANGUAGE to English
options(stringsAsFactors = FALSE); # not convert strings to factors
version # displays the version of the R software
set.seed(1415926535) # set the random number generator seed
setwd(dir) # set working directory
getwd() # get working directory
time = Sys.Date() # 
