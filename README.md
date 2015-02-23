Getting and Cleaning Data Course Project
=========================
Wearable computing - Movement dataset
----------------------

Feb, 2015

####About
The purpose of this project is to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
[UCI](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Data for this project has been provided on the course description page and can be downloaded from the following link:
[Data](http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Synopsis
This project will result in a tidy version of the "Human Activity Recognition Using Smartphones Dataset" supplied for the assignment.

##Download Data

Download and extract the UCI zip file into the data directory, so that the input files are located as follows:

1. data/activity_labels.txt
2. data/features.txt
3. data/test/subject_test.txt
4. data/train/subject_train.txt
5. data/test/X_test.txt
6. data/train/X_train.txt
7. data/test/y_test.txt
8. data/train/y_train.txt

## Tidy data process
This assignment requires a function named "run_analysis". In summary, the function merges the `test` and `training` data for subjects and features, subsets data for only the features that are a measurement of mean or standard deviation, reads activity labels resulting in a data set of combined subject,features and activity data, melts and reshapes data, and finally outputs to ordered tidy data set.


## Files in this repo

  - run_analysis.R

    Create a tidy dataset as requested by the assignment. The code contains comments which explain the process.

  - tidy_data.txt

    The Resulting tidy dataset

  - CodeBook.md

    The codebook providing a description of tidy_data.txt


