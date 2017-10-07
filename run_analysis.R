```javascript
run_analysis <- function(){
  
  # 0) - Set your working directory
  #    - Libraries to load : dplyr, plyr
  
  #==================================================
  
  # 1) Merge the training and the test sets to create one data set
  #fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  #download.file(fileUrl, destfile = "./Dataset.zip")
  #unzip("./Dataset.zip")
  
  features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
  features <- features$V2
  xTest <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE, col.names = features)
  xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE, col.names = features)
 
  activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)
  yTest <- read.table("./UCI HAR Dataset/test/Y_test.txt", header = FALSE, col.names = "activity")
  yTrain <- read.table("./UCI HAR Dataset/train/Y_train.txt", header = FALSE, col.names = "activity")
  
  # factor level?
  for (i in 1:length(yTest$activity)){
    if (yTest$activity[i] == 1) {yTest$activity[i] <- as.character(activity_labels$V2[1])}
    if (yTest$activity[i] == 2) {yTest$activity[i] <- as.character(activity_labels$V2[2])}
    if (yTest$activity[i] == 3) {yTest$activity[i] <- as.character(activity_labels$V2[3])}
    if (yTest$activity[i] == 4) {yTest$activity[i] <- as.character(activity_labels$V2[4])}
    if (yTest$activity[i] == 5) {yTest$activity[i] <- as.character(activity_labels$V2[5])}
    if (yTest$activity[i] == 6) {yTest$activity[i] <- as.character(activity_labels$V2[6])}
  }
  
  for (i in 1:length(yTrain$activity)){
    if (yTrain$activity[i] == 1) {yTrain$activity[i] <- as.character(activity_labels$V2[1])}
    if (yTrain$activity[i] == 2) {yTrain$activity[i] <- as.character(activity_labels$V2[2])}
    if (yTrain$activity[i] == 3) {yTrain$activity[i] <- as.character(activity_labels$V2[3])}
    if (yTrain$activity[i] == 4) {yTrain$activity[i] <- as.character(activity_labels$V2[4])}
    if (yTrain$activity[i] == 5) {yTrain$activity[i] <- as.character(activity_labels$V2[5])}
    if (yTrain$activity[i] == 6) {yTrain$activity[i] <- as.character(activity_labels$V2[6])}
  }
   
  xTest <- cbind(xTest, yTest)
  xTrain <- cbind(xTrain, yTrain)
  
  subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE, col.names = "subject")
  subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE, col.names = "subject")
  
  xTest <- cbind(xTest, subjectTest)
  xTrain <- cbind(xTrain, subjectTrain)
  
  remove(subjectTest)
  remove(subjectTrain)
  remove(yTest)
  remove(yTrain)
  remove(activity_labels)
  
  data1 <- rbind(xTest, xTrain)
  
  remove(xTest)
  remove(xTrain)
  
  #==================================================
  
  # 2) Extracts only the measurements on the mean and standard deviation for each measurement
  # 3) Uses descriptive activity names to name the activities in the data set
  # 4) Appropriately labels the data set with descriptive variable names
  
  #data2 <- select(data1, contains("mean."), contains("std."), "activity", "subject")
  data2 <- select(data1, contains("mean"), contains("std"), "activity", "subject")
  data2 <- arrange(data2, activity, subject)
  remove(data1)
  
  #==================================================
  
  # 5) From the data set in step 4, creates a second, independant tidy data set with 
  #    the average of each variable for each activity and each subject
  
  #data3 <- group_by(data2, activity, subject)
  data3 <- ddply(data2, .(subject, activity), numcolwise(mean))

}
```