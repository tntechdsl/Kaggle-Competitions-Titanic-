# Author: Nol Patterson
# Date: 11/8/2023
# File Name: RandomForest_Titanic.Rmd
# Purpose: Create a random forest model for predictions
library(randomForest)
library(readr)

train <- (Training_Dataset)
test <- (Testing_Dataset)
train[is.na(train)] <- 0
test[is.na(test)] <- 0

numTrain <- 891
numTrees <- 121

rows <- sample(1:nrow(train), numTrain, replace = TRUE)
survival <- as.factor(train[rows, 2])
train <- train[rows, -2]

rf <- randomForest(train, survival, xtest=test, ntree=numTrees)

predictions <- data.frame(PassengerId=1:nrow(test), Survived=levels(labels)[rf$test$predicted])
head(predictions)

write_csv(predictions, "rf_benchmark2.csv") 
