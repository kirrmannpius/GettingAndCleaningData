run_analysis <- function( ) {
    # path + filename
    urlData <- paste(getwd(),"/getdata-projectfiles-UCI HAR Dataset.zip", sep="")
    # read test data. Activities and subjects are listed seperately
    dfX_test <- read.table(unz(urlData, "UCI HAR Dataset/test/X_test.txt"), header=FALSE)
    dfy_test <- read.table(unz(urlData, "UCI HAR Dataset/test/y_test.txt"), header=FALSE)
    dfsubj_test <- read.table(unz(urlData,"UCI HAR Dataset/test/subject_test.txt"), header=FALSE)
    # read training data
    dfX_train <- read.table(unz(urlData, "UCI HAR Dataset/train/X_train.txt"), header=FALSE)
    dfy_train <- read.table(unz(urlData, "UCI HAR Dataset/train/y_train.txt"), header=FALSE)
    dfsubj_train <- read.table(unz(urlData,"UCI HAR Dataset/train/subject_train.txt"), header=FALSE)
    # read features (index/descriptive name)
    dfFeatures <- read.table(unz(urlData, "UCI HAR Dataset/features.txt"), header=FALSE)
    # get activity labels
    dfActivities <- read.table(unz(urlData, "UCI HAR Dataset/activity_labels.txt"), header=FALSE)
    # (1.) Merge test and train data to create one data set
    dfData <- rbind(dfX_test, dfX_train)
    dfDataActivities <-  rbind(dfy_test, dfy_train)
    dfDataActivities$activity <- as.factor(dfActivities[dfDataActivities[,1],2])
    dfDataSubjects <- rbind(dfsubj_test, dfsubj_train)
    names(dfDataSubjects) <- c("subject")
    # get descriptive names for the features
    vFeatureNames <- as.vector(dfFeatures[,2])
    # indices of variables related to the mean
    indMean <- grep("mean()", vFeatureNames, fixed=TRUE)
    # indices of variables related to the standard deviation
    indStd <- grep("std()", vFeatureNames, fixed=TRUE)
    # merge into a single index vector
    indices <- sort(c(indMean,indStd))
    # (2.) Extract only the measurements on the mean and standard deviation for each measurement.
    dfDataMeanStd <- dfData[,indices]
    # (4.) Appropriately labels the data set with descriptive variable names. 
    names(dfDataMeanStd) <- vFeatureNames[indices]
    # Add column activity
    dfDataMeanStd$activity <- dfDataActivities$activity
    # Add column subject
    dfDataMeanStd$subject <- dfDataSubjects$subject
    # (5.) Calculate average of each variable for each activity and each subject
    aggMean <- aggregate(x = dfDataMeanStd[,1:66], by=list(subject=dfDataMeanStd$subject, activity=dfDataMeanStd$activity), FUN=mean)
    # create txt file (without row names)
    write.table(aggMean,file="MeansBySubjectAndActivity.txt", row.name=FALSE)    
}