Getting and Cleaning Data Course Project
=========================
Wearable computing - Movement dataset
----------------------

Ilias Kotinas
Feb, 2015

####About
The purpose of this project is to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
[UCI](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Data for this project has been provided on the course description page and can be downloaded from the following link:
[Data](http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Synopsis
This file will result in a tidy version of the "Human Activity Recognition Using Smartphones Dataset" supplied for the assignment.

##Download Data

After the data has been downloaded, place following files into working directory:

1. activity_labels.txt
2. features.txt
3. subject_test.txt
4. subject_train.txt
5. X_test.txt
6. X_train.txt
7. y_test.txt
8. y_train.txt

## Tidy data process
This assignment requires a function named "run_analysis". In summary, the function merges the `test` and `training` data for subjects and features, subsets data for only the features that are a measurement of mean or standard deviation, reads activity labels resulting in a data set of combined subject,features and activity data, melts and reshapes data, and finally outputs to ordered tidy data set.


## Files in this repo

  - run_analysis.R

    Read datasets from the Internet and execute the tasks asked by the assignement.
    See CodeBook.md for a detailed description of the steps executed by run_analysis.R

  - tidy_data.txt

    Resulting tidy dataset.

  - CodeBook.md

    The codebook providing a description of tidy.txt

After run_analysis.R is run, "data" folder will contain Dataset.zip (initial data downloaded from the Internet), and tidy.txt, the tidy dataset generated for the project.
"UCI HAR Dataset" folder contains the original data unziped from Dataset.zip.

