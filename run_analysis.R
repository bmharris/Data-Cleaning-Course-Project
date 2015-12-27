#This file loads data from the UCI HAR Dataset and aggregates it together.
#Note: the UCI HAR Dataset folder must be located in the working directory

#load used libraries
library(plyr)

#Load variable names for features and activities
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
activities <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)

#Load in Training Data
subject_Train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
X_Train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
Y_Train <- read.table("./UCI HAR Dataset/train/Y_train.txt", header = FALSE)

#Apply labels to data sets
subject_Train<-rename(subject_Train, c("V1"="Subject"))
Y_Train<-rename(Y_Train, c("V1"="Activity"))
names(X_Train) <- features$V2

#Extract Relevant columns for Train set
Extracted_X_Train <- X_Train[,c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543)]

#Combine Train Data Sets
trainingData <- cbind(subject_Train, Extracted_X_Train)
trainingData <- cbind(trainingData, Y_Train)

#Load in Test Data
subject_Test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
X_Test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
Y_Test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)

#Apply labels to Test data sets
subject_Test<-rename(subject_Test, c("V1"="Subject"))
Y_Test<-rename(Y_Test, c("V1"="Activity"))
names(X_Test) <- features$V2

#Extract Relevant columns for Test data set
Extracted_X_Test <- X_Test[,c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543)]

#Combine Test Data
testData <- cbind(subject_Test, Extracted_X_Test)
testData <- cbind(testData, Y_Test)

#Combine Data Sets
CombinedData <- rbind(trainingData, testData)

#Aggregate data
aggregated_data <- aggregate(CombinedData, by = CombinedData[c("Subject","Activity")],FUN = mean)
aggregated_data <- aggregated_data[,c(1,2,4:69)]

#Add activity lables
aggregated_data <- merge(aggregated_data, activities, by.x = "Activity", by.y = "V1", all=FALSE)
aggregated_data<-rename(aggregated_data, c("V2"="Activity"))

#create descriptive names for data set
newColNames <- names(aggregated_data)
newColNames <- sub("mean()", "Mean", newColNames, fixed=T)
newColNames <- sub("std()", "Standard_Dev", newColNames, fixed=T)
newColNames <- sub("Mag", "-Magnitude", newColNames, fixed=T)
newColNames <- sub("Acc", "-Acceleration", newColNames, fixed=T)
newColNames <- sub("Gyro", "-Angular_Velocity", newColNames, fixed=T)
newColNames <- sub("Jerk", "-Jerk", newColNames, fixed=T)
names (aggregated_data) <- newColNames

#Tidy up data set
tidyData <- aggregated_data[,c(2:69)]


#Write Data Set
write.table(tidyData, "tidyData.txt", row.name = FALSE)



