library(dplyr)

#Download Data
zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "getdata_projectfiles_UCI HAR Dataset.zip"

if(!file.exists(zipFile)) {
  download.file(zipUrl, zipFile, mode = "wb")
}

## 1.Merges the training and the test sets to create one data set.

#Read train data
trainSubjects <- read.table("subject_train.txt")
trainSet <- read.table("X_train.txt")
trainLabels <- read.table("y_train.txt")

#Read test data
testSubjects <- read.table("subject_test.txt")
testSet <- read.table("X_test.txt")
testLabels <- read.table("y_test.txt")

#Read features
features <- read.table("features.txt", as.is = TRUE)

#Read activity labels
activityLabels <- read.table("activity_labels.txt")
colnames(activityLabels) <- c("activityId", "activityLabel")

#Merge train data & test data
trainData <- cbind(trainSubjects, trainSet, trainLabels)
testData <- cbind(testSubjects, testSet, testLabels)
train_test_data <- rbind(trainData, testData)

#Assign column names
colnames(train_test_data) <- c("Subject", features[, 2], "Labels")

## 2.Extracts only the measurements on the mean and standard deviation for each measurement.

measurements <- grepl("Subject|Labels|mean|std", colnames(train_test_data))
train_test_data <- train_test_data[, measurements]

# 3.Uses descriptive activity names to name the activities in the data set.
train_test_data$Labels <- factor(train_test_data$Labels, levels = activityLabels[, 1], labels = activityLabels[, 2])

# 4.Appropriately labels the data set with descriptive variable names.
train_test_dataCols <- colnames(train_test_data)

#Remove - and ()
train_test_dataCols <- gsub("[\\(\\)-]", "", train_test_dataCols)

#Replace abrre with long name
train_test_dataCols <- gsub("^f", "frequencyDomain", train_test_dataCols)
train_test_dataCols <- gsub("^t", "timeDomain", train_test_dataCols)
train_test_dataCols <- gsub("Acc", "Accelerometer", train_test_dataCols)
train_test_dataCols <- gsub("Gyro", "Gyroscope", train_test_dataCols)
train_test_dataCols <- gsub("Mag", "Magnitude", train_test_dataCols)
train_test_dataCols <- gsub("Freq", "Frequency", train_test_dataCols)
train_test_dataCols <- gsub("mean", "Mean", train_test_dataCols)
train_test_dataCols <- gsub("std", "StandardDeviation", train_test_dataCols)

#Correct typo
train_test_dataCols <- gsub("BodyBody", "Body", train_test_dataCols)

colnames(train_test_data) <- train_test_dataCols

## 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Group by activity and subject
activity_subject <- train_test_data %>%
  group_by(Subject, Labels) %>%
  summarize_each(funs(mean))

#Create a second, independent tidy set
write.table(activity_subject, "tidy_set.txt", row.names = TRUE, quote = FALSE)
