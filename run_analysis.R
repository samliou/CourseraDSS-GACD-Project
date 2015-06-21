## CDSS Getting and Cleaning Data
## Course Project

## Written by: Michael Gregory
## Date: 13-Jun-2015

library(dplyr)

## Set some general variables
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
trueFileMD5 <- "d29710c9530a31f303801b6bc34bd895"
trueFileVersion <- "1.0"
baseDir <- "~/Documents/School/coursera/data science/getting and cleaning data/project"
zipFile <- paste(baseDir,"/getdata-projectfiles-UCI HAR Dataset.zip", sep="")
zipFileList <- list()
dateDownloaded <- NULL

dataDir <- "UCI HAR Dataset"
testDir <- paste(dataDir, "/test", sep="")
trainDir <- paste(dataDir, "/train", sep="")

##If the file doesn't already exist in baseDir download it and check md5
if(!file.exists(zipFile)) {
        download.file(fileURL, destfile=zipFile, method="curl")
        dateDownloaded <- date()
        zipFileMD5 <- digest::digest(algo = "md5", file=zipFile)
        if(zipFileMD5 != trueFileMD5) {
                warning("Downloaded file has changed from original source for this script.  
                        This script may not work as originally intended.")
        }
}





## 1. Merges the training and the test sets to create one data set.  

##Since it is not clear we will assume this is the X_train.txt and X_test.txt files.
mergeDF <- NULL
featuresDF <- read.table(unz(zipFile, "UCI HAR Dataset/features.txt"), row.names=NULL)  

for(i in c("test","train")) {
        dataFile <- paste(dataDir,"/",i,"/X_",i,".txt",sep="")
        subjectFile <- paste(dataDir,"/",i,"/subject_",i,".txt",sep="")
        activityFile <- paste(dataDir,"/",i,"/y_",i,".txt",sep="")
        
        cat(sprintf("Reading in files: \n\t%s\n\t%s\n\t%s\n", dataFile,subjectFile,activityFile))
        tempDF <- read.table(unz(zipFile, dataFile), row.names=NULL)
        ##assign the column names
        colnames(tempDF) <- featuresDF[,2]
        
        ##append subject and activity files as additional columns.
        tempDF <- cbind(read.table(unz(zipFile, activityFile), col.names = "activity", row.names=NULL), tempDF)
        tempDF <- cbind(read.table(unz(zipFile, subjectFile), col.names = "subject", row.names=NULL), tempDF)
        
        if(is.null(mergeDF)) {
                mergeDF <- tempDF
        }
        else {
                mergeDF <- rbind(mergeDF,tempDF)
        }
}



## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

mergeDF <- mergeDF[,c(1,2,grep("std\\(\\)|mean\\(\\)",names(mergeDF)))]


## 3. Uses descriptive activity names to name the activities in the data set

activity_labelsDF <- read.table(unz(zipFile, "UCI HAR Dataset/activity_labels.txt"), row.names=NULL)  
mergeDF$activity <- as.character(factor(mergeDF$activity, labels=activity_labelsDF[,2]))

## 4. Appropriately labels the data set with descriptive variable names. 

##See above (line ~50).  To me it makes more sense to have done this previously.

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of 
##    each variable for each activity and each subject.

##The "wide" form of the data has 180 rows (and a number of columns equal to the features kept + 2 (one for subject, one for activities)).

##summaryDF <-group_by(mergeDF,subject)


