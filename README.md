# ProjectGandC

This is a repo for the course Getting and Cleaning data course project
It contains:

1)CodeBook for a description of the variables in the data frame, created by the script run_analysis.R

2)The script run_analysis.R

Creates a tidy dataset in r v3.1.2, the following steps were taken.

*)The labels was changed to be consistent and illegal symbols in r was removed. 
The names was also changed to be unique

*)Only variables that contained mean and standard deviation were used

*)Subject and activity descriptions where added to the data set,
acitivty descriptions were changed to be literal

*)The train and test data were merged into one data set with the subject, activitiy descriptions.

*)The merged data was grouped by the subject,activity columns and then summerized with 
respect to the average of the varibles.

The data used in the analysis comes from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A description of this data can be found at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
