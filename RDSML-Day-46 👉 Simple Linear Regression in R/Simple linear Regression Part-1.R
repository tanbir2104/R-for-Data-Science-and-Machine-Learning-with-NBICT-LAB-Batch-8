# Importing the data set
data = read.csv("Salary_Data.csv")

# Splitting the data set into the training set and test set
install.packages("caTools")
library(caTools)
set.seed(123)
split = sample.split(data$Salary, SplitRatio = 2/3)
split
set.seed(412)

training_set = subset(data, split == TRUE)
test_set = subset(data, split==FALSE)

# Fitting the simple linear regression to the training set
regressor = lm(formula = Salary~YearsExperience, data=training_set)
regressor
