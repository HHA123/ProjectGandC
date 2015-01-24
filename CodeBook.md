

The data used in susequent analysis comes from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A description of the data can be found at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

To create a tidy dataset of the above data the following was done in r v3.1.2
and the code can be found in run_analysis.R

1)The labels was changed to be consistent and illegal symbols in r was removed. 
The names was also changed to be unique

2)Only Variables that contained mean and standard deviation were used

3)subject and activity descriptions where added to the data set,
acitivty descriptions were changed to be literal

4)The X_train and X_test data was merged into one data set with the subject, activitiy descriptions.

5)The merged data was grouped by the subject,activity columns and then summerized with 
respect to the average of the varibles.



Here follows a short description of each variable:

This Variable was contain an index number for each subject 1-30
"subject"

This variable describes six different activitis carried out by subjects
"activity"

These signals were used to estimate the mean of the variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
"tBodyAccMeanX"
"tBodyAccMeanY"
"tBodyAccMeanZ"
"tGravityAccMeanX"
"tGravityAccMeanY"
"tGravityAccMeanZ"
"tBodyAccJerkMeanX"
"tBodyAccJerkMeanY"
"tBodyAccJerkMeanZ"
"tBodyGyroMeanX"
"tBodyGyroMeanY"
"tBodyGyroMeanZ"
"tBodyGyroJerkMeanX"
"tBodyGyroJerkMeanY"
"tBodyGyroJerkMeanZ"
"tBodyAccMagMean"
"tGravityAccMagMean"
"tBodyAccJerkMagMean"
"tBodyGyroMagMean"
"tBodyGyroJerkMagMean"
"fBodyAccMeanX"
"fBodyAccMeanY"
"fBodyAccMeanZ"
"fBodyAccMeanFreqX"
"fBodyAccMeanFreqY"
"fBodyAccMeanFreqZ"
"fBodyAccJerkMeanX"
"fBodyAccJerkMeanY"
"fBodyAccJerkMeanZ"
"fBodyAccJerkMeanFreqX"
"fBodyAccJerkMeanFreqY"
"fBodyAccJerkMeanFreqZ"
"fBodyGyroMeanX"
"fBodyGyroMeanY"
"fBodyGyroMeanZ"
"fBodyGyroMeanFreqX"
"fBodyGyroMeanFreqY"
"fBodyGyroMeanFreqZ"
"fBodyAccMagMean"
"fBodyAccMagMeanFreq"
"fBodyBodyAccJerkMagMean"
"fBodyBodyAccJerkMagMeanFreq"
"fBodyBodyGyroMagMean"
"fBodyBodyGyroMagMeanFreq"
"fBodyBodyGyroJerkMagMean"
"fBodyBodyGyroJerkMagMeanFreq"
"angletBodyAccMeanGravity"
"angletBodyAccJerkMeanGravityMean"
"angletBodyGyroMeanGravityMean"
"angletBodyGyroJerkMeanGravityMean"
"angleXGravityMean"
"angleYGravityMean"
"angleZGravityMean"


These signals were used to estimate the standard deviation of the variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
"tBodyAccstdX"
"tBodyAccstdY"
"tBodyAccstdZ"
"tGravityAccstdX"
"tGravityAccstdY"
"tGravityAccstdZ"
"tBodyAccJerkstdX"
"tBodyAccJerkstdY"
"tBodyAccJerkstdZ"
"tBodyGyrostdX"
"tBodyGyrostdY"
"tBodyGyrostdZ"
"tBodyGyroJerkstdX"
"tBodyGyroJerkstdY"
"tBodyGyroJerkstdZ"
"tBodyAccMagstd"
"tGravityAccMagstd"
"tBodyAccJerkMagstd"
"tBodyGyroMagstd"
"tBodyGyroJerkMagstd"
"fBodyAccstdX"
"fBodyAccstdY"
"fBodyAccstdZ"
"fBodyAccJerkstdX"
"fBodyAccJerkstdY"
"fBodyAccJerkstdZ"
"fBodyGyrostdX"
"fBodyGyrostdY"
"fBodyGyrostdZ"
"fBodyAccMagstd"
"fBodyBodyAccJerkMagstd"
"fBodyBodyGyroMagstd"
"fBodyBodyGyroJerkMagstd"
