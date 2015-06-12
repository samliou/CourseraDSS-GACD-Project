## Using the following 
##     dataset: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of 
##    each variable for each activity and each subject.

library(plyr)

## Set some gneric variables
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
trueFileMD5 <- "d29710c9530a31f303801b6bc34bd895"
trueFileVersion <- "1.0"
baseDir <- "~/Documents/School/coursera/data science/getting and cleaning data/project"
zipFile <- paste(baseDir,"/getdata-projectfiles-UCI HAR Dataset.zip", sep="")
dateDownloaded <- NULL

dataDir <- "UCI HAR Dataset"
fullDataDir <- paste(baseDir, "/", dataDir, sep="")
testDir <- paste(dataDir, "/test", sep="")
##testISDir <- paste(testDir, "/Inertial Signals", sep="")
trainDir <- paste(dataDir, "/train", sep="")
##trainISDIR <- paste(trainDir, "/Inertial Signals", sep="")

testDF <- data.frame()
trainDF <- data.frame()
mergedDF <- data.frame()
fileList <- list()


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



featuresTable <- read.table(unz(zipFile, "UCI HAR Dataset/features.txt"), row.names=1)  
activity_labels <- read.table(unz(zipFile, "UCI HAR Dataset/activity_labels.txt"), row.names=1)  

## 1. Merges the training and the test sets to create one data set.

##for each file in "test" and "train" directory create an object
fileList <- unzip(zipFile, list=TRUE)

##merge all files for test dataset
#####!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!remove X
searchString <- paste(testDir,".*X.*txt",sep="")
for( j in fileList[grep(searchString,fileList$Name),]$Name) {
        ##get the filename to use as col.name
        baseColName <- strsplit(tail(strsplit(j,"/")[[1]],1),"\\.")[[1]][[1]]
        colNamePrefix <- paste(baseColName,"_",sep="")
        print(j)
        tempDF <- read.table(unz(zipFile, j))
        colnames(tempDF) <- NULL
        colnames(tempDF) <- colnames(tempDF, do.NULL = FALSE, prefix = colNamePrefix)
        ##testDF <- join(testDF,tempDF)
        print(ncol(tempDF))
        print(nrow(tempDF))
        print(ncol(testDF))
        print(nrow(testDF))
}



## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 




## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of 
##    each variable for each activity and each subject.




## might need to unzip and read each file
##if(!dir.exists(dataDir)) {
##unzip(zipFile)
##unzip(zipFile, list=TRUE)$Name

##}

