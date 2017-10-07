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
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.

And I put it in R data.frames that I called :
* features 
* activity_labels 
* xTrain
* yTrain
* xTest
* yTest 

-----------------------------------------------------------

## Naming the **variables**

* xTest and xTrain both contains measurements of different variables but the columns don't originally contain variables names. So I used the names of these variables contained in the
features data.frame to name xTest and xTrain variables while reading test/X_test.txt and train/X_train.txt.
* I also named yTest and yTrain variable "activity" while reading test/y_test.txt and train/y_train.txt.
*
*
*
*

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

Then, I sorted data by activity and subject :
```javascript
data3 <- ddply(data2, .(subject, activity), numcolwise(mean))
```

-----------------------------------------------------------

# Description of final data

## data2

* data2 :
    * File Structure : data.frame
    * Cases : 10299
    * Variables : 81

Variable Name                       | Explanation                     | Value 
----------------------------------- | ------------------------------- | -------------:
activity                            | Activity of the subject                                | LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS 
subject                             | Number of the volunteer         | From 1 to 30
tBodyAcc-mean()-X                   | Mean body acceleration along x axis                                | numeric
tBodyAcc-mean()-Y                   | Mean body acceleration along y axis                                 | numeric
tBodyAcc-mean()-Z                   | Mean body acceleration along z axis                                 | numeric
tBodyAcc-std()-X                    | Standard deviation of body acceleration along x axis                                 | numeric
tBodyAcc-std()-Y                    | Standard deviation of body acceleration along y axis                                 | numeric
tBodyAcc-std()-Z                    | Standard deviation of body acceleration along z axis                                | numeric
tGravityAcc-mean()-X                | Mean gravity acceleration along x axis                                | numeric
tGravityAcc-mean()-Y                | Mean gravity acceleration along y axis                                 | numeric
tGravityAcc-mean()-Z                | Mean gravity acceleration along z axis                                | numeric
tGravityAcc-std()-X
                 | Standard deviation of gravity acceleration along x axis                                 | numeric
tGravityAcc-std()-Y
                 | Standard deviation of gravity acceleration along y axis                                 | numeric
tGravityAcc-std()-Z                 | Standard deviation of gravity acceleration along z axis                                 | numeric
tBodyAccJerk-mean()-X               |                                 | numeric
tBodyAccJerk-mean()-Y               |                                 | numeric
tBodyAccJerk-mean()-Z               |                                 | numeric
tBodyAccJerk-std()-X
                |                                 | numeric
tBodyAccJerk-std()-Y                |                                 | numeric
tBodyAccJerk-std()-Z                |                                 | numeric
tBodyGyro-mean()-X                  |                                 | numeric
tBodyGyro-mean()-Y                  |                                 | numeric
tBodyGyro-mean()-Z                  |                                 | numeric
tBodyGyro-std()-X    
               |                                 | numeric
tBodyGyro-std()-Y                   |                                 | numeric
tBodyGyro-std()-Z
                   |                                 | numeric
tBodyGyroJerk-mean()-X              |                                 | numeric
tBodyGyroJerk-mean()-Y              |                                 | numeric
tBodyGyroJerk-mean()-Z              |                                 | numeric
tBodyGyroJerk-std()-X
               |                                 | numeric
tBodyGyroJerk-std()-Y               |                                 | numeric
tBodyGyroJerk-std()-Z
               |                                 | numeric
tBodyAccMag-mean()                  |                                 | numeric
tBodyAccMag-std()
                   |                                 | numeric
tGravityAccMag-mean()
               |                                 | numeric
tGravityAccMag-std()
                |                                 | numeric
tBodyAccJerkMag-mean()
              |                                 | numeric
tBodyAccJerkMag-std()
               |                                 | numeric
tBodyGyroMag-mean()
                 |                                 | numeric
tBodyGyroMag-std()
                  |                                 | numeric
tBodyGyroJerkMag-mean()             |                                 | numeric
tBodyGyroJerkMag-std()
              |                                 | numeric
fBodyAcc-mean()-X                   |                                 | numeric
fBodyAcc-mean()-Y                   |                                 | numeric
fBodyAcc-mean()-Z                   |                                 | numeric
fBodyAcc-std()-X
                    |                                 | numeric
fBodyAcc-std()-Y                    |                                 | numeric
fBodyAcc-std()-Z
                    |                                 | numeric
fBodyAcc-meanFreq()-X               |                                 | numeric
fBodyAcc-meanFreq()-Y               |                                 | numeric
fBodyAcc-meanFreq()-Z
               |                                 | numeric
fBodyAccJerk-mean()-X
               |                                 | numeric
fBodyAccJerk-mean()-Y               |                                 | numeric
fBodyAccJerk-mean()-Z               |                                 | numeric
fBodyAccJerk-std()-X
                |                                 | numeric
fBodyAccJerk-std()-Y                |                                 | numeric
fBodyAccJerk-std()-Z                |                                 | numeric
fBodyAccJerk-meanFreq()-X           |                                 | numeric
fBodyAccJerk-meanFreq()-Y           |                                 | numeric
fBodyAccJerk-meanFreq()-Z           |                                 | numeric
fBodyGyro-mean()-X                  |                                 | numeric
fBodyGyro-mean()-Y                  |                                 | numeric
fBodyGyro-mean()-Z                  |                                 | numeric
fBodyGyro-std()-X                   |                                 | numeric
fBodyGyro-std()-Y                   |                                 | numeric
fBodyGyro-std()-Z                   |                                 | numeric
fBodyGyro-meanFreq()-X              |                                 | numeric
fBodyGyro-meanFreq()-Y              |                                 | numeric
fBodyGyro-meanFreq()-Z              |                                 | numeric
fBodyAccMag-mean()                  |                                 | numeric
fBodyAccMag-std()
                   |                                 | numeric
fBodyAccMag-meanFreq()              |                                 | numeric
fBodyBodyAccJerkMag-mean()
          |                                 | numeric
fBodyBodyAccJerkMag-std() 
          |                                 | numeric
fBodyBodyGyroMag-mean()
             |                                 | numeric
fBodyBodyGyroMag-std()
              |                                 | numeric
fBodyBodyGyroMag-meanFreq()         |                                 | numeric
fBodyBodyGyroJerkMag-mean()         |                                 | numeric
fBodyBodyGyroJerkMag-std()
          |                                 | numeric
fBodyBodyGyroJerkMag-meanFreq()     |                                 | numeric
angle(tBodyAccMean,gravity)         |                                 | numeric
angle(tBodyAccJerkMean),gravityMean)|                                 | numeric
angle(tBodyGyroMean,gravityMean)
    |                                 | numeric
angle(tBodyGyroJerkMean,gravityMean)|                                 | numeric
angle(X,gravityMean)                |                                 | numeric
angle(Y,gravityMean)                |                                 | numeric
angle(Z,gravityMean)
                |                                 | numeric

-----------------------------------------------------------

## data3

* data3 :
    * File Structure : data.frame
    * Cases : 180
    * Variables : 81

Variables are the same as for data2 except it contains  the average of each variable for each activity and each subject.