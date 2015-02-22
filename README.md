Getting-and-Cleaning-Data-Course-Project
================================================

This is a script created for the course project that will read in the test and training data, combine them, rename variables replace the activity labels, and finally make a seperate tidy data set called "final table.txt". The script that runs the analysis on the Samsung data. The only prerequisite for the script to run properly is that the dataset is located within the working directory and that the names of the downloaded data remain unchanged. 

Files in Repository: 
======================================================================================================================
"run_analysis.R" - This is the script created for the course project that will read in the test and training data, combine them, rename variables, replace the activity labels, and finally make a seperate tidy dataset in a new file called "final table.txt"

How the script works:
======================================================================================================================

-The script starts by reading in both the training and test X data to seperate data frames.

-Then the script reads in the feature names from "features.txt" and uses that to rename the variables in both data frames.

-Next, the Y data for both is read in and added to their respective data frames using cbind in a new column called "activity".

-The same process is used for the subject labels. Read text files, cbind, new column called "subject".

-The training and test data frames are then merged along like variables into a new data frame called "joint".

-Next, the script extracts only the variables with mean and std informations as well as the subject and activity and put in a new data frame called "sub".

-The activity labels in "sub" are then changed from just numbers to more descriptive names using "activity_labels.txt".

-A new tidy dataset is made by first, melting "sub" and then recasting it so we get the average for each variable for
every combination of subject and activity. 

-Finally, this new dataframe called "casted" will be written to a text file called "final table.txt".
