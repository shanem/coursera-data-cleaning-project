
readAndMergeData <- function() {
    trainingData <- read.csv2('train/X_train.txt', sep="", header=FALSE)
    testData <- read.csv2('test/X_test.txt', sep="", header=FALSE)
    data <- rbind(trainingData, testData)
    data
}

labelData <- function(data) {
    labels <- read.csv2('features.txt', header=FALSE)
    characterLabels <- as.character(labels[, "V1"])
    strippedCharacterLabels <- unlist(lapply(strsplit(characterLabels, " "), function(x) x[2]))
    names(data) <- strippedCharacterLabels
    data
}

subsetMeanAndStdColumns <- function(data) {
    data[, grep("mean\\(\\)|std\\(\\)", colnames(data))]
}

extendActivityLabel <- function(data) {
    activityLabels <- read.csv2('activity_labels.txt', sep="", header=FALSE)
    trainingActivities <- read.csv2('train/y_train.txt', sep="", header=FALSE)
    testActivities <- read.csv2('test/y_test.txt', sep="", header=FALSE)
    
    activities <- rbind(trainingActivities, testActivities)
    labeledActivites <- merge(activities, activityLabels, all.x=T, sort=F, by.x="V1", by.y="V1")
    data <- cbind(activity = as.character(labeledActivites[, "V2"]), data)
    
    data
}

runAnalysis <- function() {
    data <- readAndMergeData()
    data <- labelData(data)
    data <- subsetMeanAndStdColumns(data)
    data <- extendActivityLabel(data)
    data
}