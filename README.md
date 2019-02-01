# Getting_and_Cleaning_Data_Course_Project
## 1. Merges the training and the test sets to create one data set.
subject_train/subject_test: who performed the activity, from 1 to 30, read as trainSubjects/testSubjects  
X_train: 7352rows, 561cols, read as trainSet  
X_test: 2947ros, 561cols, read as testSet  
y_train/y_test: Labels, from 1 to 6, read as trainLabels/testLabels  
y_train: 7352rows, 1cols  
y_test: 2947rows, 1cols  
features: 561 signals, correspond to 561cols in X_train & X_test  
activity_labels: 6rows, 2cols, correspond to Labels in y_train & y_test, 1st col is "activityId", 2nd col is "activityLabel"  

merge by cols: (trainSubjects, trainSet, trainLabels) & (testSubjects, testSet, testLabels) >> trainData & testData  
merge by rows: trainData, testData  

## 2. Extracts only the measurements on the mean and standard deviation for each measurement.  
Subject & Labels no need change
extract colnames with "mean" & "std"
keep cols with the names extracted >> train_test_data

## 3. Uses descriptive activity names to name the activities in the data set
replace Labels in train_test_data with activity_labels

## 4.Appropriately labels the data set with descriptive variable names.
there are "-" & "()" in colnames, replace them with ""  
  eg: tBodyAcc-mean()-X >> tBodyAccmeanX  

replace the abbreviation with long name  
  eg: tBodyAccmeanX >> timeDomainBodyAccelerometerMeanX  
  
  some rules: start with "f" >> "frequencyDomain"  
              start with "t" >> "timeDomain"  
              "Acc" >> "Accelerometer"  
              "Gyro" >> "Gyroscope"  
              "Mag" >> "Magnitude"  
              "Freq" >> "Frequency"  
              "mean" >> "Mean"  
              "std" >> "StandardDeviation"  
   
   typos: some colnames with double "Body", keep one  
   eg:  frequencyDomainBodyBodyAccelerometerJerkMagnitudeMean >> frequencyDomainBodyAccelerometerJerkMagnitudeMean  
   
## 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  
group by Subject & Labels, calculate mean of each variable  







