
readAndMergeData <- function() {
    trainingData <- read.csv2('train/X_train.txt', sep="", header=FALSE, skip=7000)
    testData <- read.csv2('test/X_test.txt', sep="", header=FALSE, skip=7000)
    data <- rbind(trainingData, testData)
    data
}

labelData <- function(data) {
    labels <- read.csv2('features.txt', header=FALSE)
    characterLabels <- as.character(labels[, "V1"])
    strippedCharacterLabels <- unlist(lapply(strsplit(characterLabels, " "), function(x) x[2]))
    names(data) <- strippedCharacterLabels
}

runAnalysis <- function() {
    data <- readAndMergeData()
    labelData(data)
}