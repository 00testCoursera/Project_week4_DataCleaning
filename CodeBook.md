# Code Book - Project_week4_DataCleaning 

================================================================ 00testCoursera Coursera Course Getting and Cleaning Data by John Hophins University 04/29/2017

================================================================

##Code book of tidy.txt


### Original data
In this project the original data set was downloaded here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The unzipped folder is called *UCI HAR Dataset* and contains two folders and four files. 
The *test* and *train* folder each contain one folder *Inertial Signals* and three documentens namely a dataset on the *subjects* *X* and *Y* of the respectively. The data from the Inertial Signals files are not used in this project.

UCI HAR Dataset
  *test* 
        *Inertial Signals* raw data of inertial signals
        *subject_test.txt* IDs of subjects
        *X_test.txt* test set data 
        *Y_test.txt* test set codes of activity labels
  *train* 
        *Inertial Signals* raw data of inertial signals
        *subject_train.txt* IDs of subjects
        *X_train.txt* train set data 
        *Y_train.txt* train set codes of activity labels
 
  *activity_labels.txt* labels of activities (1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING, 5 STANDING, 6 LAYING)
  *features_info.txt* info on measures taken in the tests
  *features.txt* list of features
  *README.txt* background info on the original study and data

### Information on original data  
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

### Steps in run_analysis
The code helps to get and clean the original data and finally creates a tidy dataset containing only the means, standard deviations per subject per activity. There are 5 steps the code takes to come from the original to the tidy dataset:
- It loads the data and the features and activity codes
- It prepares the data to extract the mean, STD and adding the features
- It merges the data sets of the train and test data
- It adds the names of the columns and labels of activities
- And finally it creates a tidy data set with the means and standard deviations per activity per subject

### Data in tidy.txt
in chronological order of columns:
* subject - Id of subject, from 1:30
* activity - activities performed with smartphone: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

Mean and standard deviations of results of tests:
* tBodyAccMeanX                	
* tBodyAccMeanY	                	
* tBodyAccMeanZ
* tBodyAccStdX                 	
* tBodyAccStdY	                 	
* tBodyAccStdZ
* tGravityAccMeanX	
* tGravityAccMeanY	             	
* tGravityAccMeanZ
* tGravityAccStdX              	
* tGravityAccStdY	              	
* tGravityAccStdZ
* tBodyAccJerkMeanX            	
* tBodyAccJerkMeanY	            	
* tBodyAccJerkMeanZ
* tBodyAccJerkStdX             	
* tBodyAccJerkStdY	             	
* tBodyAccJerkStdZ
* tBodyGyroMeanX               	
* tBodyGyroMeanY	               	
* tBodyGyroMeanZ
* tBodyGyroStdX                	
* tBodyGyroStdY	                	
* tBodyGyroStdZ
* tBodyGyroJerkMeanX           	
* tBodyGyroJerkMeanY	           	
* tBodyGyroJerkMeanZ
* tBodyGyroJerkStdX            	
* tBodyGyroJerkStdY	            	
* tBodyGyroJerkStdZ
* tBodyAccMagMean              	
* tBodyAccMagStd	               	
* tGravityAccMagMean
* tGravityAccMagStd            	
* tBodyAccJerkMagMean	          	
* tBodyAccJerkMagStd
* tBodyGyroMagMean	
* tBodyGyroMagStd	              	
* tBodyGyroJerkMagMean
* tBodyGyroJerkMagStd          	
* fBodyAccMeanX	                	
* fBodyAccMeanY
* fBodyAccMeanZ                	
* fBodyAccStdX	                 	
* fBodyAccStdY
* fBodyAccStdZ                 	
* fBodyAccMeanFreqX	            	
* fBodyAccMeanFreqY
* fBodyAccMeanFreqZ            	
* fBodyAccJerkMeanX	            	
* fBodyAccJerkMeanY
* fBodyAccJerkMeanZ	
* fBodyAccJerkStdX	             	
* fBodyAccJerkStdY
* fBodyAccJerkStdZ             	
* fBodyAccJerkMeanFreqX	        	
* fBodyAccJerkMeanFreqY
* fBodyGyroMeanX	               	
* fBodyGyroMeanY
* fBodyGyroMeanZ               	
* fBodyGyroStdX	                	
* fBodyGyroStdY
* fBodyGyroStdZ	
* fBodyGyroMeanFreqX	           	
* fBodyGyroMeanFreqY
* fBodyGyroMeanFreqZ	
* fBodyAccMagMean	              	
* fBodyAccMagStd
* fBodyAccMagMeanFreq	
* fBodyBodyAccJerkMagMean	      	
* fBodyBodyAccJerkMagStd
* fBodyBodyAccJerkMagMeanFreq  	
* fBodyBodyGyroMagMean	         	
* fBodyBodyGyroMagStd
* fBodyBodyGyroMagMeanFreq     	
* fBodyBodyGyroJerkMagMean	     	
* fBodyBodyGyroJerkMagStd
* fBodyBodyGyroJerkMagMeanFreq
