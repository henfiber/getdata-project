run_analysis <- function() {
	# Load required libraries
    library(plyr); library(dplyr); library(reshape2)

	# Read in subjects for train and test set
	subject_test <- read.table("data/test/subject_test.txt", col.names=c("Subject"))
	subject_train <- read.table("data/train/subject_train.txt", col.names=c("Subject"))

	# Combine train and test sets
	subject_combined <- rbind(subject_train, subject_test)

	# Read in features for train and test.
	# Note: this is the data for each feature, not the feature labels.
	features_test <- read.table("data/test/X_test.txt")
	features_train <- read.table("data/train/X_train.txt")

	# Combine training and test data
	features_data <- rbind(features_test, features_train)

	# Read in list of features. Note: this is a list of the features names or labels. Not the features data
	feature_list <- read.table("data/features.txt", col.names=c("index", "feature_labels"))


	# Create 1 dimensional character vector containing feature labels from features_list data frame
	feature_labels <- feature_list$feature_labels

	# Create logical vector indicating columns which have mean() and std() in their name
	# use grepl()
	features_subset <- grepl('mean\\(\\)|std\\(\\)',feature_labels)

	# Create a character vector of only features with mean and standard deviation in their name
	feature_list <- as.character(feature_labels[features_subset])



	# Rename columns in features_data before subsetting out the mean and standard deviation columns, so that names match up still
	colnames(features_data) <- feature_labels

	# Extract only mean() and std() columns from features_data using the logical vector "features_subset"
	features_data <- features_data[,features_subset]

	# Read in activities for train and test
	activities_test <- read.table("data/test/y_test.txt")
	activities_train <- read.table("data/train/y_train.txt")

	# Combine training and test activities into single data frame and rename column to "activity" from "V1"
	activities_all <- rbind(activities_test, activities_train)
	colnames(activities_all) <- "activityLabel"

	# Recode activity values as descriptive names using the activity labels file
	activity_labels<-read.table("data/activity_labels.txt",sep=" ",col.names=c("activityLabel","Activity"))
	activities_all<-join(activities_all,activity_labels,by="activityLabel",type="left")

	# Drop activity numbers
	activities_all$activityLabel <- NULL

	# Combine Actitivies, Subjects and Features all into one data frame
	all_df <- cbind(features_data, activities_all, subject_combined)

	# Melt data frame for reshaping
	tidydf <- melt(all_df, id=c("Subject", "Activity"), measure.vars=feature_list)
	# Reshape into tidy data frame by mean using the reshape2 package
	tidydf <- dcast(tidydf, Activity + Subject ~ variable, mean)
	# Reorder by Subject then Activity
	tidydf <- tidydf[order(tidydf$Subject, tidydf$Activity),]

	# Reindex Rows and move Subject to Column 1
	rownames(tidydf) <- 1:nrow(tidydf)
	tidydf <- tidydf[,c(2,1,3:68)]

	# Output file
	write.table(tidydf, file="tidy_data.txt")

}
