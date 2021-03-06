Summary

* 180 rows : 30 Subjects X 6 Activities ("long" format)
* 68 columns : Subject, Activity and 66 feature means
* Each row represents one observation per activity for 66 feature means
* For the features only the variables with -mean or -std from the raw data were used in this analysis because we were only interested in the mean and standard deviation of the feature values

Description of variables and units

* The first column is "Subject", and is labeled 1 to 30 and it identifies the subject who performed the activity for each window sample.
* The second column is "Activity", and can take the following 6 values:

	LAYING / SITTING / STANDING / WALKING / WALKING DOWNSTAIRS / WALKING UPSTAIRS

* Columns 3 to 68 contain the mean/std of each feature from the raw data. For example, tBodyAcc-mean()-X is the average of all tBodyAcc-mean()-X means for a given activity


Columns

These are the 68 columns as described above

    Subject  Activity

    tBodyAcc-mean()-X  tBodyAcc-mean()-Y  tBodyAcc-mean()-Z

    tBodyAcc-std()-X  tBodyAcc-std()-Y  tBodyAcc-std()-Z

    tGravityAcc-mean()-X  tGravityAcc-mean()-Y  tGravityAcc-mean()-Z

    tGravityAcc-std()-X  tGravityAcc-std()-Y  tGravityAcc-std()-Z

    tBodyAccJerk-mean()-X  tBodyAccJerk-mean()-Y  tBodyAccJerk-mean()-Z

    tBodyAccJerk-std()-X  tBodyAccJerk-std()-Y  tBodyAccJerk-std()-Z

    tBodyGyro-mean()-X  tBodyGyro-mean()-Y  tBodyGyro-mean()-Z

    tBodyGyro-std()-X  tBodyGyro-std()-Y  tBodyGyro-std()-Z

    tBodyGyroJerk-mean()-X  tBodyGyroJerk-mean()-Y  tBodyGyroJerk-mean()-Z

    tBodyGyroJerk-std()-X  tBodyGyroJerk-std()-Y  tBodyGyroJerk-std()-Z

    tBodyAccMag-mean()  tBodyAccMag-std()

    tGravityAccMag-mean()  tGravityAccMag-std()

    tBodyAccJerkMag-mean()  tBodyAccJerkMag-std()

    tBodyGyroMag-mean()  tBodyGyroMag-std()

    tBodyGyroJerkMag-mean()  tBodyGyroJerkMag-std()

    fBodyAcc-mean()-X  fBodyAcc-mean()-Y  fBodyAcc-mean()-Z

    fBodyAcc-std()-X  fBodyAcc-std()-Y  fBodyAcc-std()-Z

    fBodyAccJerk-mean()-X  fBodyAccJerk-mean()-Y  fBodyAccJerk-mean()-Z

    fBodyAccJerk-std()-X  fBodyAccJerk-std()-Y  fBodyAccJerk-std()-Z

    fBodyGyro-mean()-X  fBodyGyro-mean()-Y  fBodyGyro-mean()-Z

    fBodyGyro-std()-X  fBodyGyro-std()-Y  fBodyGyro-std()-Z

    fBodyAccMag-mean()  fBodyAccMag-std()

    fBodyBodyAccJerkMag-mean()  fBodyBodyAccJerkMag-std()

    fBodyBodyGyroMag-mean()  fBodyBodyGyroMag-std()

    fBodyBodyGyroJerkMag-mean()  fBodyBodyGyroJerkMag-std()
