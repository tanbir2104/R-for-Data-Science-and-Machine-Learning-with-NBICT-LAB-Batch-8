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

# Fitting the multipleiregressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State, data = trainig_set)
sum linear regression model to the training set 
mary(regressor)

# Predicting the test set result
y_pred = predict(regressor,test_set)

# Stepwise backward elimination
regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend, data = trainig_set)
summary(regressor)
regressor = lm(formula = Profit ~ R.D.Spend + Marketing.Spend, data = trainig_set)
summary(regressor)

# Automated stepwise backward elimination 
full_model = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend, data = trainig_set)


final_model = step(full_model, direction ="backward")

# Assumption testing 

plot(trainig_set$R.D.Spend,trainig_set$Profit)
cor.test(trainig_set$R.D.Spend,trainig_set$Profit,method = "pearson")
plot(final_model)

# Checking for the independence of errors

install.packages("lmtest")
library(lmtest)
dwtest(final_model)

# Checking the normality of residuals
shapiro.test(rstandard(final_model))
qqnorm(rstandard(final_model))
qqline(rstandard(final_model))

# Multicollinearity
library(car)
vif(final_model)

# Homoscedasticity testing
plot(final_model$fitted.values,rstandard(final_model))
abline(h=0,col="red")
bptest(final_model)
