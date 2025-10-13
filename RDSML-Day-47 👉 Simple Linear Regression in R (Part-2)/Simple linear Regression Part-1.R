# Importing the data set
data = read.csv("Salary_Data.csv")

# Splitting the data set into the training set and test set
#install.packages("caTools")
library(caTools)
set.seed(123)
split = sample.split(data$Salary, SplitRatio = 2/3)
split
set.seed(412)

training_set = subset(data, split == TRUE)
test_set = subset(data, split==FALSE)

# Fitting the simple linear regression to the training set
regressor = lm(formula = Salary~YearsExperience, data=training_set)
# Checking the summary of the model
summary(regressor)

# Predicting the test set result
y_pred = predict(regressor, newdata = training_set)
y_pred

# Visualizing the training set
library(ggplot)
ggplot() +
  geom_point(aes(x = training_set$YearsExperience,y =training_set$Salary),
             colour = "red")+
  geom_line(aes(x = training_set$YearsExperience,y=y_pred,
                 colour = "blue"))+
  ggtitle("salary vs Experience")+
  xlab("years of experience")+
  ylab("salary")

# Visualizing the test set result
ggplot() +
  geom_point(aes(x = test_set$YearsExperience,y =test_set$Salary),
             colour = "red")+
  geom_line(aes(x = test_set$YearsExperience,y=predict(regressor, newdata = test_set),
                colour = "blue"))+
  ggtitle("salary vs Experience")+
  xlab("years of experience")+
  ylab("salary")

