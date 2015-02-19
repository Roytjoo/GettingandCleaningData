# Getting and Cleaning Data - Course Project

## Introduction
The script "run_analysis.R" runs an analysis on data collected from the accelerometers from the Samsung Galaxy S smartphone.

More information about the data:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The actual data that is and can be used:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The assignment documentation can be found on:
https://class.coursera.org/getdata-011/human_grading/view/courses/973498/assessments/3/submissions

This project consists of the following files:
<ul>
<li><strong>README.md</strong> This README file that the describes the repository.</li>
<li><strong>run_analysis.R:</strong> the R-script that runs the analysis.</li>
<li><strong>CodeBook.md:</strong> Mark-up file to dscribe the functions, variables taht are used in the run_analysis.R script.</li>
<li><strong>run_analysis.txt:</strong> Export file of the script run_analysis.R.</li>
</ul>

## Explanation of the script
<ol>
<li><strong>Merges the training and the test sets to create one data set.</strong>
The "train/X_train.txt" is read with the fucntion "read.table" and stored in train. The "train/y_train.txt" and "train/subject_train.txt" are binded as a new columns with the function cbind. For the test sets this is equivalent only with the test files and stored in the test variable. The two sets train and test are combined with the function rbind.</li>
<li><strong>Extracts only the measurements on the mean and standard deviation for each measurement.</strong>
The "features.txt" file is read in into the variable features with the function "read.table". The two colomns of the fatures data.frame are renamead as "column" and "name". A new dataframe "selectedfeatures" is created by filtering only the features with the text "mean()" or "std()". The data in ttdata is filtered with the selectedfeatures </li> 
<li><strong>Uses descriptive activity names to name the activities in the data set.</strong></li>
<li><strong>Appropriately labels the data set with descriptive variable names.</strong></li>
<li><strong>From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.</strong></li>
<li><strong>Writes the result to a file.</strong>
writes result the table to a file "run_analysis.txt".</li>
</ol>

Roy de Groot
