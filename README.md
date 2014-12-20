TidyData README
========

Getting &amp; Cleaning Data Course Project

## Usage instructions
1. With all the files in the repository in the current directory, extract the zip archive "getdata_projectfiles_UCI HAR Dataset.zip". In Linux, simply run "unzip getdata_projectfiles_UCI HAR Dataset.txt" at the command line. This should produce the directory "UCI HAR Dataset" containing the data set.
2. Start R.
3. Run the command source("run_analysis.R") at the R prompt. This should produce tidyData.txt in the current directory.

### README.md
This is the file you are reading now. It provides a brief description of all the files in this repository and how they work together

### run_analysis.R
This file contains the R code for reading the data and distilling it into a "tidy" form

### tidyData.txt
This file is the output from run_analysis.R and contains the tidied data. Each row holds the ID of the subject (1..30), the activity, and the mean of the selected variables for each subject/activity combination.

### getdata_projectfiles_UCI HAR Dataset.zip
This zip archive has been downloaded from 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
It contains the data sets required by the run_analysis.R script.
