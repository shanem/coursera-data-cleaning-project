
readAndMergeData <- function() {
    trainingData <- read.csv2('train/X_train.txt', sep="", header=FALSE)
    testData <- read.csv2('test/X_test.txt', sep="", header=FALSE)
    data <- rbind(trainingData, testData)
    data
}

runAnalysis <- function() {
    data <- readAndMergeData()
}