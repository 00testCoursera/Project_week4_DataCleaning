# Project_week4_DataCleaning 

================================================================
00testCoursera
Coursera Course Getting and Cleaning Data by John Hophins University
04/29/2017

================================================================
### Content 
This project contains four files:
- Read_me.md
- tidy.txt
- codeBook.md
- run_analysis.R

### Steps to take 
1. Download the orginal data and save it locally, this will create the folder UCI HAR Dataset;
2. Put run_analysis.R in the parent folder of UCI HAR Dataset;
3. Set working directory to this parent directory;
4. Run the run_analysis.R code and it creates a document called tidy.txt in the parent folder.

### run_analysis.R file
The run_analysis code does the following things:
- It loads the data and the features and activity codes
- It prepares the data to extract the mean, STD and adding the features
- It merges the data sets of the train and test data
- It adds the names of the columns and labels of activities
- And finally it creates a tidy data set with the means and standard deviations per activity per subject
