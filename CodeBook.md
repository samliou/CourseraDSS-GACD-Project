DATA DICTIONARY - Mean Summarization of Human Activity Recognition Using Smartphones Dataset

The processed dataset includes the following variables.

subject		
	Subject number
	Unique identifier assigned to each of the 30 volunteer participants
		1..30 .Unique/anonymous identifier 

activity	
	Activity code
	Activity performed by participants while collecting data
		1 .WALKING
		2 .WALKING_UPSTAIRS
		3 .WALKING_DOWNSTAIRS
		4 .SITTING
		5 .STANDING
		6 .LAYING

tBodyAcc.mean.[X,Y,Z]		
	Mean of multiple collections of mean estimate of time domain accelerometer measurement from 
	body signal in X, Y, or Z direction. 
	Captured at a constant rate of 50 Hz then filtered using a median filter and a 3rd order low 
	pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
		0.0000000..0.9999999	.Mean

tBodyAcc.std.[X,Y,Z]
	Mean of multiple collections of standard deviation estimate of time domain accelerometer 
	measurement from body signal in X, Y, or Z direction. 
	Captured at a constant rate of 50 Hz then filtered using a median filter and a 3rd order low 
	pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
		0.0000000..0.9999999	.Mean

tGravityAcc.mean.[X,Y,Z]
	Mean of multiple collections of mean estimate of time domain accelerometer 
	measurement from gravity signal in X, Y, or Z direction. 
	Captured at a constant rate of 50 Hz then filtered using a median filter and a 3rd order low 
	pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
		0.0000000..0.9999999	.Mean

tGravityAcc.std.[X,Y,Z]
	Mean of multiple collections of standard deviation estimate of time domain accelerometer 
	measurement from gravity signal in X, Y, or Z direction. 
	Captured at a constant rate of 50 Hz then filtered using a median filter and a 3rd order low 
	pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
		0.0000000..0.9999999	.Mean

tBodyAccJerk.mean.[X,Y,Z]
	Mean of multiple collections of mean estimate of time domain accelerometer measurement from 
	body linear acceleration and angular velocity derived to obtain Jerk signals in the X, Y, or Z direction.
	Captured at a constant rate of 50 Hz then filtered using a median filter and a 3rd order low 
	pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
		0.0000000..0.9999999	.Mean

tBodyAccJerk.std.[X,Y,Z] 
	Mean of multiple collections of standard deviation estimate of time domain accelerometer measurement from 
	body linear acceleration and angular velocity derived to obtain Jerk signals in the X, Y, or Z direction.
	Captured at a constant rate of 50 Hz then filtered using a median filter and a 3rd order low 
	pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
		0.0000000..0.9999999	.Mean

tBodyGyro.mean.[X,Y,Z]
	Mean of multiple collections of mean estimate of time domain gyroscopic measurement from 
	body signal in X, Y, or Z direction. 
	Captured at a constant rate of 50 Hz then filtered using a median filter and a 3rd order low 
	pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
		0.0000000..0.9999999	.Mean

tBodyGyro.std.[X,Y,Z]
	Mean of multiple collections of standard deviation estimate of time domain gyroscopic measurement from 
	body signal in X, Y, or Z direction. 
	Captured at a constant rate of 50 Hz then filtered using a median filter and a 3rd order low 
	pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
		0.0000000..0.9999999	.Mean

tBodyGyroJerk.mean.[X,Y,Z]
	Mean of multiple collections of mean estimate of time domain gyroscopic measurement from 
	body linear acceleration and angular velocity derived to obtain Jerk signals in the X, Y, or Z direction.
	Captured at a constant rate of 50 Hz then filtered using a median filter and a 3rd order low 
	pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
		0.0000000..0.9999999	.Mean

tBodyGyroJerk.std.[X,Y,Z]
	Mean of multiple collections of standard deviation estimate of time domain gyroscopic measurement from 
	body linear acceleration and angular velocity derived to obtain Jerk signals in the X, Y, or Z direction.
	Captured at a constant rate of 50 Hz then filtered using a median filter and a 3rd order low 
	pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
		0.0000000..0.9999999	.Mean

tBodyAccMag.mean
	Mean of multiple collections of mean estimate of time domain accelerometer measurement from 
	Euclidean norm of magnitude of body signal.
	Captured at a constant rate of 50 Hz then filtered using a median filter and a 3rd order low 
	pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
		0.0000000..0.9999999	.Mean

tBodyAccMag.std
	Mean of multiple collections of standard deviation estimate of time domain accelerometer measurement from 
	Euclidean norm of magnitude of body signal.
	Captured at a constant rate of 50 Hz then filtered using a median filter and a 3rd order low 
	pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
		0.0000000..0.9999999	.Mean

tGravityAccMag.mean
	Mean of multiple collections of mean estimate of time domain accelerometer 
	measurement from Euclidean norm of gravity signal.
	Captured at a constant rate of 50 Hz then filtered using a median filter and a 3rd order low 
	pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
		0.0000000..0.9999999	.Mean

tGravityAccMag.std
	Mean of multiple collections of standard deviation estimate of time domain accelerometer 
	measurement from Euclidean norm of gravity signal.
	Captured at a constant rate of 50 Hz then filtered using a median filter and a 3rd order low 
	pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
		0.0000000..0.9999999	.Mean

tBodyAccJerkMag.mean
tBodyAccJerkMag.std
tBodyGyroMag.mean
tBodyGyroMag.std
tBodyGyroJerkMag.mean
tBodyGyroJerkMag.std
fBodyAcc.mean.[X,Y,Z]
fBodyAcc.std.[X,Y,Z]
fBodyAccJerk.mean.[X,Y,Z]
fBodyAccJerk.std.[X,Y,Z]
fBodyGyro.mean.[X,Y,Z]
fBodyGyro.std.[X,Y,Z]
fBodyAccMag.mean
fBodyAccMag.std
fBodyBodyAccJerkMag.mean
fBodyBodyAccJerkMag.std
fBodyBodyGyroMag.mean
fBodyBodyGyroMag.std
fBodyBodyGyroJerkMag.mean
fBodyBodyGyroJerkMag.std
