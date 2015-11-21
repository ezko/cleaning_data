# CodeBook
This exercise is based on the data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The original data for the project is located: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

To run the run_analysis.R script the Samsung data (from the link above) should be unzipped in your working directory.

The code in the run_analysis.R script will do the following:
* Merge the training and the test sets to create one data set.
* Extract only the measurements on the mean and standard deviation for each measurement. 
* Use descriptive activity names to name the activities in the data set
* Appropriately label the data set with descriptive variable names. 
* Create a tidy data set with the average of each variable for each activity and each subject.
* Final result will be written to a file named tidt_set_result.txt
