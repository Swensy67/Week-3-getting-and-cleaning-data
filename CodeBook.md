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

## Reading and putting data in R object

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
    -
    -
    -
    -
    -

```javascript
// All the code you will ever need
var hw = "Hello World!"
alert(hw);
```
-----------------------------------------------------------

## Description of final data

data2
File Structure :
Cases :
Variables :
Record Length :
Record Per Case : 

Variable Name                       | Explanation      | Value 
--------------------------------    | ---------------- | ----------:
activity                   |                  | numeric
subject                   | vindaloo         | numeric
tBodyAcc-mean()-X                   |                  | numeric
tBodyAcc-mean()-Y
                   | vindaloo         | numeric
tBodyAcc-mean()-Z                   | lamb madras      | numeric
tBodyAcc-std()-X                    |                  | numeric
tBodyAcc-std()-Y                    |                  | numeric
tBodyAcc-std()-Z                    |                  | numeric
tGravityAcc-mean()-X                |                  | numeric
tGravityAcc-mean()-Y                ||numeric
tGravityAcc-mean()-Z                ||numeric
tGravityAcc-std()-X
                 ||numeric
tGravityAcc-std()-Y
                 ||numeric
tGravityAcc-std()-Z                 ||numeric
tBodyAccJerk-mean()-X               ||numeric
tBodyAccJerk-mean()-Y               ||numeric
tBodyAccJerk-mean()-Z               ||numeric
tBodyAccJerk-std()-X
                ||numeric
tBodyAccJerk-std()-Y                ||numeric
tBodyAccJerk-std()-Z                ||numeric
tBodyGyro-mean()-X                  ||numeric
tBodyGyro-mean()-Y                  ||numeric
tBodyGyro-mean()-Z                  ||numeric
tBodyGyro-std()-X    
               ||numeric
tBodyGyro-std()-Y                   ||numeric
tBodyGyro-std()-Z
                   ||numeric
tBodyGyroJerk-mean()-X              ||numeric
tBodyGyroJerk-mean()-Y              ||numeric
tBodyGyroJerk-mean()-Z              ||numeric
tBodyGyroJerk-std()-X
               ||numeric
tBodyGyroJerk-std()-Y               ||numeric
tBodyGyroJerk-std()-Z
               ||numeric
tBodyAccMag-mean()                  ||numeric
tBodyAccMag-std()
                   ||numeric
tGravityAccMag-mean()
               ||numeric
tGravityAccMag-std()
                ||numeric
tBodyAccJerkMag-mean()
              ||numeric
tBodyAccJerkMag-std()
               ||numeric
tBodyGyroMag-mean()
                 ||numeric
tBodyGyroMag-std()
                  ||numeric
tBodyGyroJerkMag-mean()             ||numeric
tBodyGyroJerkMag-std()
              ||numeric
fBodyAcc-mean()-X                   ||numeric
fBodyAcc-mean()-Y                   ||numeric
fBodyAcc-mean()-Z                   ||numeric
fBodyAcc-std()-X
                    ||numeric
fBodyAcc-std()-Y                    ||numeric
fBodyAcc-std()-Z
                    ||numeric
fBodyAcc-meanFreq()-X               ||numeric
fBodyAcc-meanFreq()-Y               ||numeric
fBodyAcc-meanFreq()-Z
               ||numeric
fBodyAccJerk-mean()-X
               ||numeric
fBodyAccJerk-mean()-Y               ||numeric
fBodyAccJerk-mean()-Z               ||numeric
fBodyAccJerk-std()-X
                ||numeric
fBodyAccJerk-std()-Y                ||numeric
fBodyAccJerk-std()-Z                ||numeric
fBodyAccJerk-meanFreq()-X           ||numeric
fBodyAccJerk-meanFreq()-Y           ||numeric
fBodyAccJerk-meanFreq()-Z           ||numeric
fBodyGyro-mean()-X                  ||numeric
fBodyGyro-mean()-Y                  ||numeric
fBodyGyro-mean()-Z                  ||numeric
fBodyGyro-std()-X                   ||numeric
fBodyGyro-std()-Y                   ||numeric
fBodyGyro-std()-Z                   ||numeric
fBodyGyro-meanFreq()-X              ||numeric
fBodyGyro-meanFreq()-Y              ||numeric
fBodyGyro-meanFreq()-Z              ||numeric
fBodyAccMag-mean()                  ||numeric
fBodyAccMag-std()
                   ||numeric
fBodyAccMag-meanFreq()              ||numeric
fBodyBodyAccJerkMag-mean()
          ||numeric
fBodyBodyAccJerkMag-std() 
          ||numeric
fBodyBodyGyroMag-mean()
             ||numeric
fBodyBodyGyroMag-std()
              ||numeric
fBodyBodyGyroMag-meanFreq()         ||numeric
fBodyBodyGyroJerkMag-mean()         ||numeric
fBodyBodyGyroJerkMag-std()
          ||numeric
fBodyBodyGyroJerkMag-meanFreq()     ||numeric
angle(tBodyAccMean,gravity)         ||numeric
angle(tBodyAccJerkMean),gravityMean)||numeric
angle(tBodyGyroMean,gravityMean)
    ||numeric
angle(tBodyGyroJerkMean,gravityMean)||numeric
angle(X,gravityMean)                ||numeric
angle(Y,gravityMean)                ||numeric
angle(Z,gravityMean)
                ||numeric