################################
# Loading required packages
################################
if(! "data.table" %in% rownames(installed.packages())){
  install.packages("data.table", dep = TRUE)
}
library(data.table)

################################
# Reading input files
################################

# read features from file
features <- fread("UCI HAR Dataset/features.txt")$V2

# read activity_labels from file
activities <- fread("UCI HAR Dataset/activity_labels.txt")
setnames(activities,c("id", "activity"))

# read X_train from file
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt", colClasses = "numeric")
setnames(xtrain,features)
xtrain$set <- rep("train",nrow(xtrain))

# read subject_train from file
subject_train <- fread("UCI HAR Dataset/train/subject_train.txt")
setnames(subject_train,"id")
xtrain$subject_id <- subject_train$id

# read y_train from file
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt", colClasses = "numeric")
setnames(ytrain,"id")
xtrain$activity_id <- ytrain$id

# read X_test from file
xtest <- read.table("UCI HAR Dataset/test/X_test.txt", colClasses = "numeric")
setnames(xtest,features)
xtest$set <- rep("test",nrow(xtest))

# read subject_test from file
subject_test <- fread("UCI HAR Dataset/test/subject_test.txt")
setnames(subject_test,"id")
xtest$subject_id <- subject_test$id

# read y_test from file
ytest <- read.table("UCI HAR Dataset/test/y_test.txt", colClasses = "numeric")
setnames(ytest,"id")
xtest$activity_id <- ytest$id

################################
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
################################
first_tidy <- rbind(xtrain,xtest)[,grep("-mean|-std|set|activity_id|subject_id",x=colnames(xtrain))]

################################
# 3. Uses descriptive activity names to name the activities in the data set
################################
first_tidy <- merge(first_tidy, activities, by.x="activity_id", by.y="id", all=TRUE, sort=FALSE)[,-1]

################################
# 4. Appropriately labels the data set with descriptive variable names
################################
names(first_tidy) <- gsub('-meanFreq...(.)', ' -  \\1 axis mean frequency', names(first_tidy))
names(first_tidy) <- gsub('-meanFreq..', ' - mean frequency', names(first_tidy))
names(first_tidy) <- gsub('-mean...(.)', ' - \\1 axis mean', names(first_tidy))
names(first_tidy) <- gsub('-mean..', ' - mean', names(first_tidy))
names(first_tidy) <- gsub('-std...(.)', ' - \\1 axis  standard deviation', names(first_tidy))
names(first_tidy) <- gsub('-std..', ' - standard deviation', names(first_tidy))
names(first_tidy) <- gsub('^t(.*)Gyro(.*)', 'gyroscope - time domain - \\1\\2', names(first_tidy))
names(first_tidy) <- gsub('^t(.*)Acc(.*)', 'accelerometer - time domain - \\1\\2', names(first_tidy))
names(first_tidy) <- gsub('^f(.*)Gyro(.*)', 'gyroscope - frequency domain - \\1\\2', names(first_tidy))
names(first_tidy) <- gsub('^f(.*)Acc(.*)', 'accelerometer - frequency domain - \\1\\2', names(first_tidy))
names(first_tidy) <- gsub('BodyBody', 'Body', names(first_tidy))
names(first_tidy) <- gsub('Body -', 'body acceleration -', names(first_tidy))
names(first_tidy) <- gsub('BodyMag', ' body acceleration magnitude', names(first_tidy))
names(first_tidy) <- gsub('Mag', ' magnitude', names(first_tidy))
names(first_tidy) <- gsub('Jerk', ' jerk', names(first_tidy))
names(first_tidy) <- gsub('Body', ' body', names(first_tidy))
names(first_tidy) <- gsub('Gravity', ' gravity', names(first_tidy))

################################
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
################################
second_tidy <- NULL
ft_ncols <- ncol(first_tidy)
for(subset_1 in split(first_tidy,first_tidy$subject_id)){
  for(subset_2 in split(subset_1,subset_1$activity)){
    subset <- subset_2[,-seq(from=ft_ncols-2,to=ft_ncols)]
    label <- head(subset_2[,seq(from=ft_ncols-1,to=ft_ncols)],1)
    newrow <- cbind(t(apply(subset,2,mean)),label)
    if(length(second_tidy)==0){
      second_tidy <- newrow
    }else{
      second_tidy <- rbind(second_tidy,newrow)  
    }
  }
}

################################
# 6. Dump results
################################
write.table(second_tidy, "second_tidy.txt", row.names = FALSE)