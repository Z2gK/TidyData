# TidyData Code Book
====================

## Overview

The file tidyData.txt contains all the headers shown below. All variables hold numeric data type except for SubjectID and Activity. The tGravityAcc-std()-Z variable in a particular row, for example, will hold the average of all observations of tGravityAcc-std()-Z for the corresponding subject performing the particular activity denoted by the Activity factor. All numeric data in tidyData.txt are average data for the various variables, for all subject/activity combinations.

SubjectID
Activity
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-mean()
tBodyAccMag-std()
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
tBodyGyroMag-mean()
tBodyGyroMag-std()
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAcc-meanFreq()-X
fBodyAcc-meanFreq()-Y
fBodyAcc-meanFreq()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyAccJerk-meanFreq()-X
fBodyAccJerk-meanFreq()-Y
fBodyAccJerk-meanFreq()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyGyro-meanFreq()-X
fBodyGyro-meanFreq()-Y
fBodyGyro-meanFreq()-Z
fBodyAccMag-mean()
fBodyAccMag-std()
fBodyAccMag-meanFreq()
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()
fBodyBodyAccJerkMag-meanFreq()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()
fBodyBodyGyroMag-meanFreq()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()
fBodyBodyGyroJerkMag-meanFreq()

## Transformations performed on original data

The following files were used to derive the tidied data set:

1. UCI HAR Dataset\activity_labels.txt
2. UCI HAR Dataset\features.txt
3. UCI HAR Dataset\test\subject_test.txt
4. UCI HAR Dataset\test\X_test.txt
5. UCI HAR Dataset\test\y_test.txt
6. UCI HAR Dataset\train\subject_train.txt
7. UCI HAR Dataset\train\X_train.txt
8. UCI HAR Dataset\train\y_train.txt

The subject IDs of the 2947 observations were stored in the subject_{test,train}.txt files while the activity labels were in the y_{test,train}.txt files. The activity labels were then converted to a more descriptive form. The required mean and std variables from the numerical data files X_{test,train}.txt were also extracted. These were eventually merged into a single data frame.

Finally, using the ddply function from the plyr package, the means were computed for various combinations of subject and activities. The result was output to tidyData.txt.
