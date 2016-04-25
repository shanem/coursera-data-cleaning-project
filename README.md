`run_analysis.R`, given the [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) as source data, will generate various summary statistics of each subject for each activity the subject performed


## To generate:
	1. Download the UCI HAR Dataset into the current working directory: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
	2. Unzip and cd into the `UCI HAR Dataset` directory
	3. Run `run_analysis.R`
	4. `meanAndStdMeasurementsBySubjectAndActivity.txt` should be generated in the current directory. See [CodeBook.md](CodeBook.md) for the format of this file


## Operation of run_analysis.R
	* Given the UCI HAR Dataset in the current working directory,
	* Reads and concatenates raw measurements from `train/X_train.txt` and `test/X_test.txt`
	* Applys labels to dataframe as described in `features.txt`
	* Excludes columns not labelled as either a mean or standard deviation of a measurement (i.e. not ending in either `mean()` or `std()`)
	* Annotates each record with the activity, as reported in `train/y_train.txt` and `test/y_test.txt`, and as labelled in `activity_labels.txt`
	* Annotates each record with the subject number, as reported in `train/subject_train.txt` and `test/subject_test.txt`
	* Aggregates this dataset by (subject, activity), calculating the means of each measurement
	* Writes result to `meanAndStdMeasurementsBySubjectAndActivity.txt`
