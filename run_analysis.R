# Preparing data.
if (!file.exists("dataset.zip")) {
  dataset.url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip";
  download.file(url = dataset.url, destfile = "dataset.zip", method = "curl");
}
if (!file.exists("UCI HAR Dataset")) {
  unzip("dataset.zip");
}

# Merging the training and the test sets.
rawSubject <- rbind(read.table("UCI HAR Dataset/train/subject_train.txt"),
                    read.table("UCI HAR Dataset/test/subject_test.txt"));
rawX <- rbind(read.table("UCI HAR Dataset/train/X_train.txt"),
              read.table("UCI HAR Dataset/test/X_test.txt"));
rawy <- rbind(read.table("UCI HAR Dataset/train/y_train.txt"),
              read.table("UCI HAR Dataset/test/y_test.txt"));
names(rawSubject) <- "Subject";
names(rawX) <- paste("Feature", 1:ncol(rawX), sep = ".");
names(rawy) <- 'y';

# Used for extracting only mesurements on the mean and stddev.
features <- paste("Feature", c(1:6, 41:46, 81:86, 121:126, 161:166,
                               201:202, 214:215, 227:228, 240:241,
                               253:254, 266:271, 345:350, 424:429,
                               503:504, 516:517, 529:530, 542:543), sep = ".");
# Used for naming the activities with descriptive  activity names.
acts <- factor(x = c("WALKING", "WALKING_UPSTAIRS",
                     "WALKING_DOWNSTAIRS",
                     "SITTING", "STANDING", "LAYING"),
               levels = c("WALKING", "WALKING_UPSTAIRS",
                          "WALKING_DOWNSTAIRS",
                          "SITTING", "STANDING", "LAYING"));

# For the meanings of the column names, please refer to CodeBook.md.
mergedData <- data.frame(Subject = as.factor(rawSubject$Subject),
                         rawX[,features],
                         Activity = acts[rawy$y]);
write.table(mergedData, file = "mergeddata.txt", quote = FALSE,
            col.names = TRUE, row.names = FALSE);

# Creating the tidy data set with the average of each variable
# for each activity and each subject.
library(reshape2);
meltedData <- melt(mergedData, id=c("Subject", "Activity"));
tidyAvg <- dcast(meltedData, Subject + Activity ~ variable, mean);
write.table(tidyAvg, file = "tidyavg.txt", quote = FALSE,
            col.names = TRUE, row.names = FALSE);
