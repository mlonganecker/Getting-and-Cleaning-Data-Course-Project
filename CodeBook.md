Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation

table with name of variable, its index in the dataset, and the variable type:


"variable_name" "variable_number" "variable_type"
"activity" 1 "factor"
"subject" 2 "factor"
"1 tBodyAcc-mean()-X" 3 "numeric"
"2 tBodyAcc-mean()-Y" 4 "numeric"
"3 tBodyAcc-mean()-Z" 5 "numeric"
"4 tBodyAcc-std()-X" 6 "numeric"
"5 tBodyAcc-std()-Y" 7 "numeric"
"6 tBodyAcc-std()-Z" 8 "numeric"
"41 tGravityAcc-mean()-X" 9 "numeric"
"42 tGravityAcc-mean()-Y" 10 "numeric"
"43 tGravityAcc-mean()-Z" 11 "numeric"
"44 tGravityAcc-std()-X" 12 "numeric"
"45 tGravityAcc-std()-Y" 13 "numeric"
"46 tGravityAcc-std()-Z" 14 "numeric"
"81 tBodyAccJerk-mean()-X" 15 "numeric"
"82 tBodyAccJerk-mean()-Y" 16 "numeric"
"83 tBodyAccJerk-mean()-Z" 17 "numeric"
"84 tBodyAccJerk-std()-X" 18 "numeric"
"85 tBodyAccJerk-std()-Y" 19 "numeric"
"86 tBodyAccJerk-std()-Z" 20 "numeric"
"121 tBodyGyro-mean()-X" 21 "numeric"
"122 tBodyGyro-mean()-Y" 22 "numeric"
"123 tBodyGyro-mean()-Z" 23 "numeric"
"124 tBodyGyro-std()-X" 24 "numeric"
"125 tBodyGyro-std()-Y" 25 "numeric"
"126 tBodyGyro-std()-Z" 26 "numeric"
"161 tBodyGyroJerk-mean()-X" 27 "numeric"
"162 tBodyGyroJerk-mean()-Y" 28 "numeric"
