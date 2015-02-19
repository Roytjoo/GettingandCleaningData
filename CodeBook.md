# CodeBook

## Introduction
This codebook describes the Variables, data and transformatiosn that are used in "run_analysis.r" R-Script.

## Data & Variables
<ul>
<li><strong>train</strong>: contains the training data "X_train.txt" with the extra columns: "y_train.txt" and subject_train.txt.</li>
<li><strong>test</strong>: contains the test data "X_test.txt" with the extra columns: "y_test.txt" and subject_test.txt.</li>
<li><strong>ttdata</strong>: the training data "train" unioned with the test data "test". This set is reused when selecting only the necessary features.</li>
<li><strong>features</strong>: the features from the "features.txt" file.</li>
<li><strong>selectedfeatures</strong>: the features that contain "mean()" or "std()".</li>
<li><strong>activities</strong>: the labels of the activities.</li>
<li><strong>result</strong>: the final result of the "run_analysis.R" script, aggregated result.</li>
</ul>

## Transformations

The "run_analysis.R" script is devided into 5 (+1 additional) parts.
<ol>
<li>Merges the training and the test sets to create one data set.</li>
<li>Extracts only the measurements on the mean and standard deviation for each measurement.</li>
<li>Uses descriptive activity names to name the activities in the data set</li>
<li>Appropriately labels the data set with descriptive variable names.</li>
<li>From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.</il>
<li>Writes the output to file named "run_analysis.txt"</li>
</ol> 
