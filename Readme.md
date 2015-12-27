#Getting and Cleaning Data Course Project Readme File

**Author**: Bryan Harris  
**Date**: 12/27/2015    
**Source Data**: The data used in this script was collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###The Data Set (from the original README file)
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 


###Run_Analysis Script
The run analysis script takes data provided in the Samsung data sets (both test and train) and combines them into one single data set. In order for the script to run properly, the **unzipped data set folder** (*UCI HAR Data Set*) must be in the working folder. Finally, data was aggregated to provide a single line per subject and activity.To do that, the following steps were taken:  

* Data from the Test data sets (Subject, X, and Y) were loaded into R  
* Labels were applied to the data sets. For the X data set, these labels initially came from then *features.txt* file provided in the source data set.  
* The relevant columns (mean and standard deviation) were extracted from the X data set.
* The three data sets were combined together using the cbind command.  
* This process was then repeated for the Train data set  
* The two compiled data sets, Train and Test, were connected together by appending the Train set to the Test Set  
* The mean of each measurement was then calculation and gregated by activity and subject combination
* Activity labels were then added to the file, by mapping the information from the *activity_labels.txt* file to the activity code.
* The data set was cleaned once again to remove the activity code, so that only the activity label remained.
* Column names were cleaned and made more descriptive by removing unnecessary characters and expanded some of the abbreviated words. This is explained further in the codebook.  
* Finally the data was exported to a text file
