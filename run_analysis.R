# verify dplyr exists
if (!library(dplyr,logical.return=TRUE)) {
  stop("Failed to load dplyr package")     
}

# function to concat 2 files  
concat <- function(file1,file2) {
 
  if (!file.exists(file1) || !file.exists(file2)) {
    stop(paste("Failed to load ",file1 , " and or ",file2))  
  }
  f1 <- read.table(file1,sep="",header = FALSE)
  f2 <- read.table(file2,sep="",header = FALSE)
  all <- rbind(f1,f2)
  return(all)
}

# Merges the training and the test sets to create one data set
# first row bind each test/train set and finally column bind all three

fileName1 <- "test//X_test.txt"
fileName2 <- "train//X_train.txt"

all_X <- concat(fileName1,fileName2)

fileName1 <- "test//y_test.txt"
fileName2 <- "train//y_train.txt"

all_y <- concat(fileName1,fileName2)

fileName1 <- "test//subject_test.txt"
fileName2 <- "train//subject_train.txt"

all_subject <- concat(fileName1,fileName2)

all <- cbind(all_subject,all_y,all_X)


# extract feature names 
fileName <- "features.txt"
if (!file.exists(fileName) ) {
  stop(paste("Failed to load ",fileName))  
}
features <- read.table(fileName,sep="",header = FALSE)
features_vec <- as.vector(features$V2)

# Appropriately label the data set with descriptive variable names
all_names <- c("subject","activity",features_vec)
  
colnames(all) <- all_names

# remove column duplicates
all <- all[, !duplicated(colnames(all))]

# Extracts only the measurements on the mean and standard deviation for each measurement
all <- select(all,subject,activity,contains("mean()"),contains("std()"))

# extract activity labels 
fileName <- "activity_labels.txt"
if (!file.exists(fileName) ) {
  stop(paste("Failed to load ",fileName))  
}
activity_labels <- read.table(fileName,sep="",header = FALSE)
activity_labels <- as.vector(activity_labels$V2)

# Uses descriptive activity names to name the activities in the data sets
all <- mutate(all,activity = activity_labels[activity])

# create the average of each variable for each activity and each subject
res %>% group_by(subject,activity) %>% summarise_each(funs(mean))

write.table(res,file="tidy_set_result.txt",row.names = FALSE)
