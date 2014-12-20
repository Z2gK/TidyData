
# This function reads subject id file, y (activity) file, and x (variable) files
# and constructs and returns a new data frame containing only the mean and std
# variables. The activity column is replaces by descriptive factors
# Assumes that we have "UCI HAR Dataset" in the current directory

makeframe <- function(subjectfile, yfile, xfile){
    subjectData<-read.table(subjectfile)
    activityData<-read.table(yfile)
    varData<-read.table(xfile, colClasses=rep("numeric",times=561))

    activityIDs <- read.table("UCI HAR Dataset/activity_labels.txt", colClasses=c("integer", "character"))
    featureIDs <- read.table("UCI HAR Dataset/features.txt", colClasses=c("integer", "character"))

    # Replace the activity numbers with actual names
    activityData$names <- activityIDs[activityData[,1],2]
    activityFactors <- factor(activityData$names)

    # Find out which columns have the wanted variables and extract from varData
    meanIndices <- grep("mean", featureIDs[,2], fixed=TRUE)
    stdIndices  <- grep("std",  featureIDs[,2], fixed=TRUE)
    wantedIndices <- c(meanIndices,stdIndices)
    wantedIndices <- sort(wantedIndices)
    extractedVarData <- varData[,wantedIndices]

    # Now label extractedVarData
    names(extractedVarData) <- featureIDs[wantedIndices,2]

    # Construct the returned data frame
    returnedFrame <- cbind(subjectData, activityFactors, extractedVarData)
    names(returnedFrame)[1] <- "SubjectID"
    names(returnedFrame)[2] <- "Activity"

    returnedFrame
}


testframe<-makeframe("UCI HAR Dataset/test/subject_test.txt","UCI HAR Dataset/test/y_test.txt", "UCI HAR Dataset/test/X_test.txt")

trainframe<-makeframe("UCI HAR Dataset/train/subject_train.txt", "UCI HAR Dataset/train/y_train.txt", "UCI HAR Dataset/train/X_train.txt")

data<-rbind(testframe,trainframe)

# Clears memory
remove(testframe)
remove(trainframe)

library(plyr)
tidyData <- ddply(data,c("SubjectID","Activity"),numcolwise(mean))
write.table(tidyData,"tidyData.txt",row.names=FALSE)

