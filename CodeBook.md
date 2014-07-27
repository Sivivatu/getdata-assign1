CodeBook
========

This file documents the formats of the output files.

mergeddata.txt
--------------

The table contained in this file corresponds to the
data.frame `mergedData` appeared in `run_analysis.R`.

It is produced by merging `subject_train.txt`, `X_train.txt`, `y_train.txt`,
`subject_test.txt`, `X_test.txt`, `y_test.txt`, with the activity labels being
replaced by their corresponding descriptive activity names.


tidyavg.txt
-----------

The table contained in this file corresponds to the
data.frame `tidyAvg` appeared in `run_analysis.R`.

It is produced using `mergedData` as its base. `melt` and `dcast` from the
library `reshape2` is utilized. It is an independent tidy data set with
the average of each variable for each activity and each subject.

About the Column Name "Feature.XXX"
-----------------------------------

The column names in the form "Feature.XXX", for example, "Feature.1",
"Feature.121", etc., correspond to these features appeared in the original
datasets.

* 1 tBodyAcc-mean()-X
* 2 tBodyAcc-mean()-Y
* 3 tBodyAcc-mean()-Z
* 4 tBodyAcc-std()-X
* 5 tBodyAcc-std()-Y
* 6 tBodyAcc-std()-Z
* 41 tGravityAcc-mean()-X
* 42 tGravityAcc-mean()-Y
* 43 tGravityAcc-mean()-Z
* 44 tGravityAcc-std()-X
* 45 tGravityAcc-std()-Y
* 46 tGravityAcc-std()-Z
* 81 tBodyAccJerk-mean()-X
* 82 tBodyAccJerk-mean()-Y
* 83 tBodyAccJerk-mean()-Z
* 84 tBodyAccJerk-std()-X
* 85 tBodyAccJerk-std()-Y
* 86 tBodyAccJerk-std()-Z
* 121 tBodyGyro-mean()-X
* 122 tBodyGyro-mean()-Y
* 123 tBodyGyro-mean()-Z
* 124 tBodyGyro-std()-X
* 125 tBodyGyro-std()-Y
* 126 tBodyGyro-std()-Z
* 161 tBodyGyroJerk-mean()-X
* 162 tBodyGyroJerk-mean()-Y
* 163 tBodyGyroJerk-mean()-Z
* 164 tBodyGyroJerk-std()-X
* 165 tBodyGyroJerk-std()-Y
* 166 tBodyGyroJerk-std()-Z
* 201 tBodyAccMag-mean()
* 202 tBodyAccMag-std()
* 214 tGravityAccMag-mean()
* 215 tGravityAccMag-std()
* 227 tBodyAccJerkMag-mean()
* 228 tBodyAccJerkMag-std()
* 240 tBodyGyroMag-mean()
* 241 tBodyGyroMag-std()
* 253 tBodyGyroJerkMag-mean()
* 254 tBodyGyroJerkMag-std()
* 266 fBodyAcc-mean()-X
* 267 fBodyAcc-mean()-Y
* 268 fBodyAcc-mean()-Z
* 269 fBodyAcc-std()-X
* 270 fBodyAcc-std()-Y
* 271 fBodyAcc-std()-Z
* 345 fBodyAccJerk-mean()-X
* 346 fBodyAccJerk-mean()-Y
* 347 fBodyAccJerk-mean()-Z
* 348 fBodyAccJerk-std()-X
* 349 fBodyAccJerk-std()-Y
* 350 fBodyAccJerk-std()-Z
* 424 fBodyGyro-mean()-X
* 425 fBodyGyro-mean()-Y
* 426 fBodyGyro-mean()-Z
* 427 fBodyGyro-std()-X
* 428 fBodyGyro-std()-Y
* 429 fBodyGyro-std()-Z
* 503 fBodyAccMag-mean()
* 504 fBodyAccMag-std()
* 516 fBodyBodyAccJerkMag-mean()
* 517 fBodyBodyAccJerkMag-std()
* 529 fBodyBodyGyroMag-mean()
* 530 fBodyBodyGyroMag-std()
* 542 fBodyBodyGyroJerkMag-mean()
* 543 fBodyBodyGyroJerkMag-std()
