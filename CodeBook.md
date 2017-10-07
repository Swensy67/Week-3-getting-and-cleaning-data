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
tBodyAcc-mean()-X                   |                  | numeric
tBodyAcc-mean()-Y
                   | vindaloo         | mild       
tBodyAcc-mean()-Z                   | lamb madras      | HOT  
tBodyAcc-std()-X                    ||    
tBodyAcc-std()-Y                    ||
tBodyAcc-std()-Z                    ||
tGravityAcc-mean()-X                ||

tGravityAcc-mean()-Y                ||
tGravityAcc-mean()-Z                ||
tGravityAcc-std()-X
                 ||
tGravityAcc-std()-Y
                 ||
tGravityAcc-std()-Z                 ||
tBodyAccJerk-mean()-X               ||

tBodyAccJerk-mean()-Y               || 

tBodyAccJerk-mean()-Z               ||
tBodyAccJerk-std()-X
                ||
tBodyAccJerk-std()-Y                ||
tBodyAccJerk-std()-Z                ||
tBodyGyro-mean()-X                  ||
tBodyGyro-mean()-Y                  ||
tBodyGyro-mean()-Z                  ||
tBodyGyro-std()-X    
               ||
tBodyGyro-std()-Y                   ||
tBodyGyro-std()-Z
                   ||
tBodyGyroJerk-mean()-X              ||
tBodyGyroJerk-mean()-Y              ||
tBodyGyroJerk-mean()-Z              ||
tBodyGyroJerk-std()-X
               ||
tBodyGyroJerk-std()-Y               ||
tBodyGyroJerk-std()-Z
               ||
tBodyAccMag-mean()                  ||
tBodyAccMag-std()
                   ||
tGravityAccMag-mean()
               ||
tGravityAccMag-std()
                ||
tBodyAccJerkMag-mean()
              ||
tBodyAccJerkMag-std()
               ||
tBodyGyroMag-mean()
                 ||
tBodyGyroMag-std()
                  ||
tBodyGyroJerkMag-mean()             ||
tBodyGyroJerkMag-std()
              ||
fBodyAcc-mean()-X                   ||
fBodyAcc-mean()-Y                   ||
fBodyAcc-mean()-Z                   ||
fBodyAcc-std()-X
                    ||
fBodyAcc-std()-Y                    ||
fBodyAcc-std()-Z
                    ||
fBodyAcc-meanFreq()-X               ||
fBodyAcc-meanFreq()-Y               ||
fBodyAcc-meanFreq()-Z
               ||
fBodyAccJerk-mean()-X
               ||
fBodyAccJerk-mean()-Y               ||
fBodyAccJerk-mean()-Z               ||
fBodyAccJerk-std()-X
                ||
fBodyAccJerk-std()-Y                ||
fBodyAccJerk-std()-Z                ||
fBodyAccJerk-meanFreq()-X           ||
fBodyAccJerk-meanFreq()-Y           ||
fBodyAccJerk-meanFreq()-Z           ||
fBodyGyro-mean()-X                  ||
fBodyGyro-mean()-Y                  ||
fBodyGyro-mean()-Z                  ||
fBodyGyro-std()-X                   ||
fBodyGyro-std()-Y                   ||
fBodyGyro-std()-Z                   ||
fBodyGyro-meanFreq()-X              ||
fBodyGyro-meanFreq()-Y              ||
fBodyGyro-meanFreq()-Z              ||
fBodyAccMag-mean()                  ||
fBodyAccMag-std()
                   ||
fBodyAccMag-meanFreq()              ||
fBodyBodyAccJerkMag-mean()
          ||
fBodyBodyAccJerkMag-std() 
          ||
fBodyBodyGyroMag-mean()
             ||
fBodyBodyGyroMag-std()
              ||
fBodyBodyGyroMag-meanFreq()         ||
fBodyBodyGyroJerkMag-mean()         ||
fBodyBodyGyroJerkMag-std()
          ||
fBodyBodyGyroJerkMag-meanFreq()     ||
angle(tBodyAccMean,gravity)         ||
angle(tBodyAccJerkMean),gravityMean)||
angle(tBodyGyroMean,gravityMean)
    ||
angle(tBodyGyroJerkMean,gravityMean)||
angle(X,gravityMean)                ||
angle(Y,gravityMean)                ||
angle(Z,gravityMean)
                ||
