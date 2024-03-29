# CodeBook

The code in the run_analysis.R script will do the following:
* Merge the training and the test sets to create one data set.
* Extract only the measurements on the mean and standard deviation for each measurement. 
* Appropriately label the data set with descriptive variable names. 
* Create a tidy data set with the average of each variable for each activity and each subject.
* Final result will be written to a file named tidt_set_result.txt

Final result will look like the following:

 subject   |         activity  | tBodyAcc-mean()-X |tBodyAcc-mean()-Y |tBodyAcc-mean()-Z 
 ----------|-------------------|-------------------|------------------|------------------
     (int) |             (chr) |            (dbl)  |           (dbl)  |           (dbl)  
         1 |            LAYING |        0.2215982  |    -0.040513953  |      -0.1132036  
         1 |           SITTING |        0.2612376  |    -0.001308288  |      -0.1045442  
         1 |          STANDING |        0.2789176  |    -0.016137590  |      -0.1106018  
         1 |           WALKING |        0.2773308  |    -0.017383819  |      -0.1111481  
         1 |WALKING_DOWNSTAIRS |        0.2891883  |    -0.009918505  |      -0.1075662  
         1 |  WALKING_UPSTAIRS |        0.2554617  |    -0.023953149  |      -0.0973020  
         2 |            LAYING |        0.2813734  |    -0.018158740  |      -0.1072456  
         2 |           SITTING |        0.2770874  |    -0.015687994  |      -0.1092183  
         2 |          STANDING |        0.2779115  |    -0.018420827  |      -0.1059085  
         2 |           WALKING |        0.2764266  |    -0.018594920  |      -0.1055004  


First column is the subject ID, second is the activity type , then follow many features (a total of 68 ) which are mean and standard deviation measurments of body linear acceleration and angular velocity in 3 directions (X,Y,Z)  , that are averaged per activity per subject.
Note: Features are normalized and bounded within [-1,1]
