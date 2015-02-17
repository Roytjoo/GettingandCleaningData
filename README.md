# Getting and Cleaning Data - Course Project

The script "run_analysis.R" runs an analysis on data collected from the accelerometers from the Samsung Galaxy S smartphone.

More information about the data: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The actual data that is and can be used:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This project consists of the following files:
<ul>
<li><strong>README.md</strong> This README file that the describes the repository.</li>
<li><strong>run_analysis.R:</strong> the R-script that runs the analysis.</li>
<li><strong>CodeBook.md:</strong> Mark-up file to dscribe the functions, variables taht are used in the run_analysis.R script.</li>
<li><strong>run_analysis.txt:</strong> Export file of the script run_analysis.R.</li>
</ul>

The "run_analysis.R" script is devided into several numbered parts.
<ol>
<li>Merges the training and the test sets to create one data set.</li>
<li>Extracts only the measurements on the mean and standard deviation for each measurement.</li>
<li>Uses descriptive activity names to name the activities in the data set</li>
<li>Appropriately labels the data set with descriptive variable names.,/li>
<li>From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.</il>
<li>Writes the output to file named '" run_analysis.txt",/li>
</ol>
