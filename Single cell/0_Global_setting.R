# Part0：Global setting
# To be modified：dir; workers; maxSize
rm(list=ls()); # Optional, remove all objects in the current environment when start a new project
dir = "path/to/dir"
workers = 12
maxSize = 300000 * 1024^2
Sys.setenv(LANGUAGE = "en"); # set the environment variable LANGUAGE to English
options(stringsAsFactors = FALSE); # not convert strings to factors
version # displays the version of the R software
set.seed(1415926535) # set the random number generator seed
setwd(dir) # set working directory
getwd() # get working directory
Sys.Date() # get the present time
library(future) # to create a multisession job 
# too many cores and too large RAM will cause "fork: retry: No child processes"
plan("multisession", workers = workers)
options(future.globals.maxSize = maxSize)
