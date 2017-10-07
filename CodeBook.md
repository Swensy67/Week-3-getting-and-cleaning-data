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
Name | Lunch order | Spicy      | Owes
------- | ---------------- | ---------- | ---------:
Joan  | saag paneer | medium | $11
Sally  | vindaloo        | mild       | $14
Erin   | lamb madras | HOT      | $5

-----------------------------------------------------------

## Description of final data

data2
File Structure :
Cases :
Variables :
Record Length :
Record Per Case : 

| Variable name        |     Explanation    |      Value |
| -------------------- |: ----------------: | ---------: |
| tBodyAcc-mean()      |        1           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        1           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        1           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        1           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        1           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        1           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        1           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        1           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        1           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        1           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        1           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        1           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        1           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        1           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        1           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        1           |      value |
| tBodyAcc-mean()      |        2           |      value |
| tBodyAcc-mean()      |        2           |      value |




