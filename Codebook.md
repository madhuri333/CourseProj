###Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING-UPSTAIRS, WALKING-DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  

**There are four columns in the tidy data table.**  

1. Subject  
2. ActivityName  
3. Mx Name  
4. Value  
  
###Subject  
There are 30 subjects who participated in the experiment so to identify measurements related to each, I have given each number 1 to 30.

###ActivityName
There are 6 activities that were performed by each subject. 

1. WALKING  
2. WALKING_UPSTAIRS  
3. WALKING_DOWNSTAIRS  
4. SITTING  
5. STANDING  
6. LAYING   
  
###Mx Name
This column describes the type of measurement taken during the experiment for a subject doing an activity.  

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelerometer and timeGyroscope. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. 
and the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer and timeGravityAccelerometer) both using a low pass Butterworth filter.  

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk and timeBodyGyroscopeJerk). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerkMagnitude, timeBodyGyroscopeMagnitude,
 timeBodyGyroscopeJerkMagnitude).

A Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerometer, frequencyBodyAccelerometerJerk, frequencyBodyGyroscope, frequencyBodyAccelerometerJerkMagnitude,
 frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude.

**Description of abbreviations of measurements**  

leading "time" or "frequency" is based on time or frequency measurements.  
Body = related to body movement.  
Gravity = acceleration of gravity  
Accelerometer = accelerometer measurement  
Gyroscope = gyroscopic measurements  
Jerk = sudden movement acceleration  
Magnitude = magnitude of movement  
mean and SD are calculated for each subject for each activity for each mean and Standard Deviation measurements.  

The units given are g’s for the accelerometer and rad/sec for the gyroscope and g/sec and rad/sec/sec for the corresponding jerks.  

**Mean measurements:**  
* timeBodyAccelerometer-Mean()-X is Mean of time measurement of Body Acceleration along X-axis.    
* timeGravityAccelerometer-Mean()-X is Mean of time measurement of Gravity Acceleration along X-axis.  
* timeBodyAccelerometerJerk-Mean()-X is Mean of time measurement of Body Jerk Acceleration along X-axis.  
* timeBodyGyroscope-Mean()-X is Mean of time measurement from Body Gyroscope along X-axis.  
* timeBodyGyroscopeJerk-Mean()-X is Mean of time measurement from Body Jerk Gyroscope along X-axis.  
* timeBodyAccelerometerMagnitude-Mean()-X is Mean of time measurement of Magnitude of Body Acceleration along X-axis.  
* timeGravityAccelerometerMagnitude-Mean() is Mean of time measurement of Magnitude of Gravity Acceleration along X-axis.  
* timeBodyAccelerometerJerkMagnitude-Mean() is Mean of time measurement of Magnitude of Body Jerk Acceleration along X-axis.  
* timeBodyGyroscopeMagnitude-Mean() is Mean of time measurement of Magnitude of Body Gyroscope along X-axis.
* timeBodyGyroscopeJerkMagnitude-Mean() is Mean of time measurement of Magnitude of Body Jerk Gyroscope along X-axis.  
 
_The following are frequency domain measurements of corresponding to the above time domain measurements._  

* frequencyBodyAccelerometer-Mean()-X  
* frequencyBodyAccelerometer-MeanFreq()-X
* frequencyBodyAccelerometerJerk-Mean()-X  
* frequencyBodyAccelerometerJerk-MeanFreq()-X  
* frequencyBodyGyroscope-Mean()-X
* frequencyBodyGyroscope-MeanFreq()-X  
* frequencyBodyAccelerometerMagnitude-Mean()  
* frequencyBodyAccelerometerMagnitude-MeanFreq()  
* frequencyBodyAccelerometerJerkMagnitude-Mean()
* frequencyBodyAccelerometerJerkMagnitude-MeanFreq()  
* frequencyBodyGyroscopeMagnitude-Mean()             
* frequencyBodyGyroscopeMagnitude-MeanFreq()  
* frequencyBodyGyroscopeJerkMagnitude-Mean()  
* frequencyBodyGyroscopeJerkMagnitude-MeanFreq()

**Standard Deviation Measurements**  
_The following are Standard deviation of time and frequency domain  measurements (explained above)_  

* timeBodyAccelerometer-SD()-X  
* timeGravityAccelerometer-SD()-X  
* timeBodyAccelerometerJerk-SD()-X  
* timeBodyGyroscope-SD()-X  
* timeBodyGyroscopeJerk-SD()-X  
* timeBodyAccelerometerMagnitude-SD()  
* timeGravityAccelerometerMagnitude-SD()  
* timeBodyAccelerometerJerkMagnitude-SD()  
* timeBodyGyroscopeMagnitude-SD()  
* timeBodyGyroscopeJerkMagnitude-SD()  
* frequencyBodyAccelerometer-SD()-X   
* frequencyBodyAccelerometerJerk-SD()-X  
* frequencyBodyGyroscope-SD()  
* frequencyBodyAccelerometerMagnitude-SD()  
* frequencyBodyAccelerometerJerkMagnitude-SD()  
* frequencyBodyGyroscopeMagnitude-SD()  
* frequencyBodyGyroscopeJerkMagnitude-SD()  

_The measurements mentioned to have been measured along X axis have also been measured along Y and Z axis_  

The set of variables that were estimated from these signals are:  

mean(): Mean value  
SD(): Standard deviation  
  
###Value
This column contains value corresponding to each measurement.  