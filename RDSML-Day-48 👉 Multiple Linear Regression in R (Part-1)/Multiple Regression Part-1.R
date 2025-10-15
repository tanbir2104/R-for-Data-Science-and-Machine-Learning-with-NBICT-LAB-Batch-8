# Multiple linear regression

# Importing the dataset
dataset = read.csv("50_Startups.csv")

# Encoding the categorical independent variable
dataset$State = factor (dataset$State,
                        levels = c('New York', 'California',
                                   'Florida'),
                        labels = c(1,2,3))

#splitting the dataset into Training set and test set
library(caTools)
set.seed(123)
split = sample.split(dataset$Profit,SplitRatio = 0.8)
trainig_set = subset(dataset,split==TRUE)
test_set = subset(dataset,split==FALSE)

# Fitting the multiple linear regression model to the training set 
regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State, data = trainig_set)
summary(regressor)
