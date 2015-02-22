#Matthew L.
#Tidy Data Project

library(plyr)
library(reshape2)

#Read in training and test data
df_training <- read.table("./UCI HAR Dataset/train/X_train.txt")
df_test <- read.table("./UCI HAR Dataset/test/X_test.txt")

#add feature names to both data frames
features <- readLines("./UCI HAR Dataset/features.txt")
names(df_training) <- features
names(df_test) <- features

#add y data to data frames
ytrain <- readLines("./UCI HAR Dataset/train/y_train.txt")
df_training <- cbind(df_training, activity = ytrain)

ytest <- readLines("./UCI HAR Dataset/test/y_test.txt")
df_test <- cbind(df_test, activity = ytest)

#add subject lables to both data frames
subjectTraining <- readLines("./UCI HAR Dataset/train/subject_train.txt")
df_training <- cbind(df_training, subject = subjectTraining)

subjectTest <- readLines("./UCI HAR Dataset/test/subject_test.txt")
df_test <- cbind(df_test, subject = subjectTest)

#merge training and test data frame
joint <- merge(df_test, df_train, all = TRUE)

#create vector of indexes for columns that have just mean and std data
index <- grep("(mean|std)\\(\\)", colnames(joint))

#add indexes of the activity and subject to vector
append(index, c(562, 563))

#subset joint using vector of indexes
sub <- joint[, index]

#Read in activity labels and then use revalue from plyr package to change activity values from 
#just numbers to more descriptive values.
activ_Labels <- readLines("./UCI HAR Dataset/activity_labels.txt")
replace <- c("1"= activ_Labels[1], "2"= activ_Labels[2], "3"= activ_Labels[3], "4"= activ_Labels[4], 
          "5"= activ_Labels[5], "6"= activ_Labels[6])

sub$activity <- revalue(sub$activity, replace)

#Make final dataset using melt and dcast.
melted <- melt(sub)
casted <- dcast(melted, activity + subject ~ variable, mean)

#write dataset to new file.
write.table(casted, file="final table.txt", row.name=FALSE)
