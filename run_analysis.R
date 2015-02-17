## load necessary packages
library(dplyr)

###################################################################
## 1. Merges the training and the test sets 
##    to create one data set.
###################################################################

## read in the training set, and bind the y en subjects as new columns
train <- read.table("train/X_train.txt") 
train <- cbind(train, read.table("train/y_train.txt"))
train <- cbind(train, read.table("train/subject_train.txt"))

## read in the test set, and bind the y en subjects as new columns
test <- read.table("test/X_test.txt")
test <- cbind(test, read.table("test/y_test.txt"))
test <- cbind(test, read.table("test/subject_test.txt"))

## combine the train and test set as rows
ttdata <- rbind(train, test)

#####################################################
## 2. Extracts only the measurements on the mean and 
##    standard deviation for each measurement.
#####################################################

features <- read.table("features.txt", stringsAsFactors = FALSE)
names(features) <- c("column", "name")
selectedfeatures <- features[features$name %like% "(std\\(\\)|mean\\(\\))",]

ttdata <- ttdata[,c(selectedfeatures$column, (ncol(ttdata) - 1), ncol(ttdata))]

##############################################
## 3. Uses descriptive activity names to name 
##    the activities in the data set
##############################################

## Read in the activity labels, not as Factors
activities <- read.table("activity_labels.txt", stringsAsFactors = FALSE)

## Convert the activity column to a Factor based on previously
## read-in the activity_labels
ttdata[,(ncol(ttdata) - 1)] <- factor(ttdata[,(ncol(ttdata) - 1)], levels=activities[,1], labels=activities[,2])

#########################################
## 4. Appropriately labels the data set 
##    with descriptive variable names. 
#########################################

## store the names of the selected feature together 
## with activity an subject 
names(ttdata) <- c(selectedfeatures$name, "activity", "subject")

########################################################
## 5. From the data set in step 4, creates a second,
##    independent tidy data set with the average of 
##    each variable for each activity and each subject.
########################################################

## aggregates the data on the activity and subject column
## and stores it into a result variable
result <- aggregate(x=ttdata[,!names(ttdata) %in% c("activity", "subject")], by=list(ttdata$activity, ttdata$subject), FUN=mean)

## writes the table to a file "run_analysis.txt"
write.table(result, file = "run_analysis.txt", row.names = FALSE)
