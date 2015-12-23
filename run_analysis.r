# Load required packages
library(data.table)
library(dplyr)
library(tidyr)

# Read the data
SubjTrainTxt <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE, colClasses = "numeric", comment.char = "")
XTrainTxt <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE, colClasses = "numeric", comment.char = "")
YTrainTxt <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE, colClasses = "numeric", comment.char = "")

SubjTestTxt <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE, colClasses = "numeric", comment.char = "")
XTestTxt <- read.table("./UCI HAR Dataset/test/x_test.txt", header=FALSE, colClasses = "numeric", comment.char = "")
YTestTxt <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE, colClasses = "numeric", comment.char = "")

fileName <- "./UCI HAR Dataset/features.txt"
con <- file(fileName, open="r")
featuresTxt <- readLines(con)
close(con)

# Merge the datasets
YTxt <- rbind(YTestTxt,YTrainTxt)
colnames(YTxt) <- "ActivityLabel"
SubjTxt <- rbind(SubjTestTxt,SubjTrainTxt)
colnames(SubjTxt) <- "Subject"
XTxt <- rbind(XTestTxt, XTrainTxt)
colnames(XTxt) <- featuresTxt
rm(XTestTxt, XTrainTxt, YTestTxt, YTrainTxt, SubjTestTxt, SubjTrainTxt)
rm(con)

# Remove the unwanted columns in XTxt
XtxtMean <- XTxt[ , grepl("mean",featuresTxt)]
XtxtStd <- XTxt[ , grepl("std",featuresTxt)]
subsetData <- cbind(SubjTxt, YTxt, XtxtMean, XtxtStd) 
rm(XTxt, XtxtMean, XtxtStd, YTxt, SubjTxt, featuresTxt, fileName)

# Put activity label in ActivityLabel Column
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")
activity <- as.data.table(activity)
colnames(activity) <- c("ActivityLabel", "ActivityName")
subsetData <- as.data.table(subsetData)
setkey(activity, ActivityLabel)
setkey(subsetData, ActivityLabel)
dataWithLabel <- merge(subsetData, activity)
rm(activity, subsetData)

# Calculate mean of all variables for each activity by an individual subject
# Group the data according to Subject & Activity, then find mean
grpdData <- group_by(dataWithLabel, Subject, ActivityName)
meanData <- summarize_each(grpdData, funs(mean))
rm(dataWithLabel, grpdData)

# Convert to tidy data by gathering columns, improving variable names and sorting according to Subject and Activity
gatherCol <- gather(meanData, Mx, Value, -Subject, -ActivityName, -ActivityLabel)
sepRowNames <- separate(gatherCol, Mx, c("RowNo", "MxName"), sep=" ")
sepRowNames$RowNo <- NULL # Removed the column having numeric prefix of measurement variable names
tidyData <- arrange(sepRowNames, Subject, ActivityLabel)
tidyData$ActivityLabel <- NULL  # After sorting, delete the column storing activity label in numeric form
rm(gatherCol, meanData, sepRowNames)

# Write the tidy data to tidy_data.txt
write.table(tidyData, file = "./tidy_data.txt", append = FALSE, quote = TRUE, sep = " ",
            eol = "\n", na = "NA", dec = ".", row.names = FALSE, col.names = TRUE)
