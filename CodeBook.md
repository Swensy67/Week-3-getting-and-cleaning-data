# Introduction

The data used in this project come from the following study :
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This is the code book that describes the variables, the data, and any transformations or work that I performed to clean up the data.

-----------------------------------------------------------

# Manipulation of the data

## Getting the data

* First, I got the data from the following link :

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

* Then, I downloaded it on my computer.
* And I unziped it : I then obtained a "UCI HAR Dataset" in my working directory.

-----------------------------------------------------------

## Reading and puting data in R object

From this directory, I got the following data sets (for more informations, see : http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names) :
* 'features.txt': List of all features.
* 'activity_labels.txt' : Links the class labels with their activity name.
* 'train/X_train.txt' : Training set.
* 'train/y_train.txt' : Training labels.
* 'test/X_test.txt' : Test set.
* 'test/y_test.txt' : Test labels.

And I put it in R data.frames that I called :
* features 
* activity_labels 
* xTrain
* yTrain
* xTest
* yTest 

-----------------------------------------------------------

## Naming the variables

* xTest and xTrain both contains measurements of different variables but the columns don't originally contain variables names. So I used the names of these variables contained in the
features data.frame to name xTest and xTrain variables while reading test/X_test.txt and train/X_train.txt :
```javascript
xTest <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE, col.names = features)
```
* I also named yTest and yTrain variable "activity" while reading test/y_test.txt and train/y_train.txt.
```javascript
yTest <- read.table("./UCI HAR Dataset/test/Y_test.txt", header = FALSE, col.names = "activity")
```
* For each line of yTest and yTrain, I change the activity number by the activity label
```javascript
for (i in 1:length(yTest$activity)){
    if (yTest$activity[i] == 1) {yTest$activity[i] <- as.character(activity_labels$V2[1])}
    if (yTest$activity[i] == 2) {yTest$activity[i] <- as.character(activity_labels$V2[2])}
    if (yTest$activity[i] == 3) {yTest$activity[i] <- as.character(activity_labels$V2[3])}
    if (yTest$activity[i] == 4) {yTest$activity[i] <- as.character(activity_labels$V2[4])}
    if (yTest$activity[i] == 5) {yTest$activity[i] <- as.character(activity_labels$V2[5])}
    if (yTest$activity[i] == 6) {yTest$activity[i] <- as.character(activity_labels$V2[6])}
  }
```
* I merge xTest and yTest and xTrain and yTrain by columns
```javascript
  xTest <- cbind(xTest, yTest)
``` 
* I get the subjects of training and tests
```javascript
  subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE, col.names = "subject")
``` 
* I add the subject column to xTest and xTrain
```javascript
  xTest <- cbind(xTest, subjectTest)
``` 
* I merge the training and the test sets
 ```javascript
  data1 <- rbind(xTest, xTrain)
``` 
* From the precedent data set, I on ly keep columns containing "mean" and "std" and also activity and subject columns.
```javascript
data2 <- select(data1, contains("mean"), contains("std"), "activity", "subject")
```
* I sort data by activity and subject
```javascript
data2 <- arrange(data2, activity, subject)
```
* From the data set in step 4, I create a second data set with the average of each variable for each activity and each subject :
```javascript
data3 <- ddply(data2, .(activity, subject), numcolwise(mean))
```  

-----------------------------------------------------------

## Selection of data

Among the data available, we only are interested in mean and standard (std) deviation variables.
That's why I selected the corresponding variables :  

```javascript
data2 <- select(data1, contains("mean"), contains("std"), "activity", "subject")
```

Then, I sorted data by activity and subject :
```javascript
data2 <- arrange(data2, activity, subject)
```

Finally, got the mean of each variable by activity and by subject :
```javascript
data3 <- ddply(data2, .(activity, subject), numcolwise(mean))
```

-----------------------------------------------------------

# Description of final data

## firstDataSet

* firstDataSet :
    * File Structure : data.frame
    * Cases : 10299
    * Variables : 81

This data set contains mean and standard deviation of the data coming from :
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Here is how they are described in their features_info.txt :

    The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
    Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
    Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
    These signals were used to estimate variables of the feature vector for each pattern:  
    '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

    tBodyAcc-XYZ
    tGravityAcc-XYZ
    tBodyAccJerk-XYZ
    tBodyGyro-XYZ
    tBodyGyroJerk-XYZ
    tBodyAccMag
    tGravityAccMag
    tBodyAccJerkMag
    tBodyGyroMag
    tBodyGyroJerkMag
    fBodyAcc-XYZ
    fBodyAccJerk-XYZ
    fBodyGyro-XYZ
    fBodyAccMag
    fBodyAccJerkMag
    fBodyGyroMag
    fBodyGyroJerkMag

    The set of variables that were estimated from these signals are: 

    mean(): Mean value
    std(): Standard deviation

Moreover, I added activity and subject variables :

Variable Name                       | Explanation                     | Value 
----------------------------------- | ------------------------------- | -------------:
activity                            | Activity of the subject                                | LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS 
subject                             | Number of the volunteer         | From 1 to 30

-----------------------------------------------------------

## finalDataSet

* finalDataSet :
    * File Structure : data.frame
    * Cases : 180
    * Variables : 81

Variables are the same as for firstDataSet except it contains  the average of each variable for each activity and each subject.