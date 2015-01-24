run_analysis <- function(){
        #Dowloads andunzip files
        if(!file.exists("./data")){dir.create("./data")}
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        unzip(zipfile="./data/dataset.zip",exdir ="C:/Users/kan01/Documents/Rprogrammering/data/UCI HAR Dataset")
        library(dplyr)
        
        #Get train and test data
        traind <- read.table("./data/UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt",header=FALSE,sep="")
        testd <- read.table("./data/UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt",header=FALSE,sep="")
        
        #Gets and cleans feature labels
        feat <- read.table("./data/UCI HAR Dataset/UCI HAR Dataset/features.txt",header=FALSE)
        feat <- feat[,2]
        feat <- gsub("[[:punct:]]","",feat)
        feat <- gsub("mean","Mean",feat)
        feat <- gsub("gravity","Gravity",feat)
        feat <- make.names(feat, unique=TRUE)
        names(testd) <- feat
        names(traind) <- feat
        
        #Removes non mean and standard variation variables 
        traind <-select(traind, contains("mean"),contains("std"))
        testd <- select(testd, contains("mean"),contains("std"))
        
        #Get and cleans activity labels
        actrain <- read.table("./data/UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt",header=FALSE,col.names="activity")
        actest <- read.table("./data/UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt",header=FALSE,col.names="activity")
        aclab <- read.table("./data/UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt",header=FALSE)
        trainv <- as.vector(t(actrain))
        testv <- as.vector(t(actest))
        aclabv <- as.vector(t(aclab[,2]))
        newtrain <- character(length(trainv))
        newtest <- character(length(testv))
        for(i in 1:length(trainv)){ newtrain[i] <-aclabv[trainv[i]]}
        for(i in 1:length(testv)){ newtest[i] <-aclabv[testv[i]]}
      
        #Get subject labels
        testid <- read.table("./data/UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt",header= FALSE,col.names = c("subject"))
        trainid <- read.table("./data/UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt",header=FALSE,col.names = c("subject"))
        
        #add activity labels to data
        traind <- cbind(newtrain,traind)
        testd <- cbind(newtest,testd)
        
        #add subject labels to data
        traind <- cbind(trainid,traind)
        testd <- cbind(testid,testd)
        
        #set the activity name correctly
        names(traind)[2] <- "activity"
        names(testd)[2] <- "activity"
        #merge train and test data
        mergeddata <- rbind(traind,testd)
        #Groups, summerises and prints mergeddata to a txt file
        tidydata <- mergeddata%>%group_by(subject,activity)%>%summarise_each(funs(mean))
        write.table(tidydata,"./tidydata.txt",row.names= FALSE)
}


