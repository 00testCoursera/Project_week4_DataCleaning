#Packages needed
install.packages("dplyr")
install.packages("reshape2")
library(dplyr)
library(reshape2)

# Loading the data in R
# Loading features and activities
features <-read.table("./UCI HAR Dataset/features.txt")
activityLabels <-read.table("./UCI HAR Dataset/activity_labels.txt")
features[,2] <- as.character(features[,2])
activityLabels[,2] <- as.character(activityLabels[,2])

# Extract mean, STD and add features 
meanStdFeatures <- grep(".*mean.*|.*std.*", features[,2])
meanStdFeaturesNames <- features[meanStdFeatures,2]
meanStdFeaturesNames = gsub('-mean', 'Mean', meanStdFeaturesNames)
meanStdFeaturesNames = gsub('-std', 'Std', meanStdFeaturesNames)
meanStdFeaturesNames <- gsub('[-()]', '', meanStdFeaturesNames)

# Loading train data
trainSubject <-read.table("./UCI HAR Dataset/train/subject_train.txt")
trainX <-read.table("./UCI HAR Dataset/train/X_train.txt")[meanStdFeatures]
trainY <-read.table("./UCI HAR Dataset/train/Y_train.txt")

# Loading test data
testSubject<-read.table("./UCI HAR Dataset/test/subject_test.txt")
testX <-read.table("./UCI HAR Dataset/test/X_test.txt")[meanStdFeatures]
testY <-read.table("./UCI HAR Dataset/test/Y_test.txt")

#1 Merges the training and the test sets to create one data set.
#2 Extracts only the measurements on the mean and standard deviation for each measurement.
testData <- cbind(testSubject, testY, testX)
trainData <-cbind(trainSubject, trainY, trainX)
AllData <- rbind(trainData, testData)

#3 Uses descriptive activity names to name the activities in the data set
#4 Appropriately labels the data set with descriptive variable names.
colnames(AllData) <- c("subject", "activity", meanStdFeaturesNames)
AllData$activity <- factor(AllData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
AllData$subject <- as.factor(AllData$subject)

#5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
MeltData <- melt(AllData, id = c("subject", "activity"))
MeanData <- dcast(MeltData, subject + activity ~ variable, mean)
write.table(MeanData, "tidy.txt", row.names = FALSE, quote = FALSE)
