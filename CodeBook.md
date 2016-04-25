# Dataset

`meanAndStdMeasurementsBySubjectAndActivity.txt`
Generated from [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
By `run_analysis.R`

# Fields

### subject

The test subject number from the UCI HAR study

### activity

The label of the activity the subject performed
Possible values include:
* `WALKING`
* `WALKING_UPSTAIRS`
* `WALKING_DOWNSTAIRS`
* `SITTING`
* `STANDING`
* `LAYING`

### Remaining fields
These represent the mean values for various measurements from the UCI HAR Dataset, for each unique (subject, activity) pair.
See [features_info.txt](features_info.txt) from the UCI HAR Dataset for methodology and explanation of each measurement

## Examples
`tBodyAcc-mean()-X`: The mean across all trials for a given (subject, activity ) pair of:
- mean of body acceleration in the time domain in the X direction

`tBodyAcc-std()-X`: The mean across all trials for a given (subject, activity ) pair of:
- standard deviation of body acceleration in the time domain in the X direction
