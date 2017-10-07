# Introduction

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis. 

Here are the instructions :

    One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

    Here are the data for the project:

    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

    You should create one R script called run_analysis.R that does the following.

    1) Merges the training and the test sets to create one data set.
    2) Extracts only the measurements on the mean and standard deviation for each measurement.
    3) Uses descriptive activity names to name the activities in the data set
    4) Appropriately labels the data set with descriptive variable names.
    5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

-----------------------------------------------------------

# Content of the repository

In this repository you will find :
- README.md : wich explains the purpose of this project, the content of the repo and how to run the code.
- CodeBook.md : describes the variables, the data, and any transformations or work that I performed to clean up. 
- run_analysis.R : the code to run.
- finalDataSet.txt : the final data set described at step 5)

-----------------------------------------------------------

# How to run the run_analysis.R

1. Open an RStudio session.
2. Load dplyr and plyr libraries.
3. Source the run_analysis.R
4. Run the run_analysis.R
5. This program will :
    * give you 2 final data frames :
        * data2 : merged training and test sets with only measurements on the mean and standard deviation for each measurment. Moreover, variables are labeled, such as the activities and the data set is sorted by activity and subject.
        * data3 : data frame containing average of each variable for each activity and each subject of data2.
    * write in the working directory a "finalDataSet.txt" containing data of data3.

If you already ran run_analysis.R, you can comment the following lines :
```javascript
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, destfile = "./Dataset.zip")
  unzip("./Dataset.zip")
```

-----------------------------------------------------------

# How to read the finalDataSet.txt

data <- read.table("./finalDataSet.txt", header = TRUE)
View(data)


