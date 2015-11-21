# CodeBook

The code in the run_analysis.R script will do the following:
* Merge the training and the test sets to create one data set.
* Extract only the measurements on the mean and standard deviation for each measurement. 
* Appropriately label the data set with descriptive variable names. 
* Create a tidy data set with the average of each variable for each activity and each subject.
* Final result will be written to a file named tidt_set_result.txt

First column of the result is the subject ID, the second one is the activity type , then follow many mean and standard deviation measurments of body linear acceleration and angular velocity in 3 directions (X,Y,Z) which are averaged per activity per subject.
