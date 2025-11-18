# Setup: packages and data loading
# install.packages(c("e1071","ggplot2","dplyr"))

library(e1071)
library(ggplot2)
library(dplyr)

# Loading the dataset
dataset <- read.csv("day.csv")

# Basic cleaning and feature selection
bike <- dataset %>%
  select(cnt, temp, atemp, hum, windspeed, season, yr, mnth, 
         holiday, weekday, workingday, weathersit)

str(bike)

# Convert categorical variables to factors
bike <- bike %>%
  mutate(
    season = factor(season),
    yr = factor(yr),
    mnth = factor(mnth),
    holiday = factor(holiday),
    weekday = factor(weekday),
    workingday = factor(workingday),
    weathersit = factor(weathersit)
  )

str(bike)

# Train/Test Split
set.seed(123)
n <- nrow(bike)
indices <- seq_len(n)
train_idx <- sample(indices, size = 0.7 * n)
train_set <- bike[train_idx, ]
test_set <- bike[-train_idx, ]

# Scale numeric features 
#Identify numeric predictor 
num_cols = c("temp","atemp","hum","windspeed")

#Compute scalling parameters on training data
train_means = sapply(train_set[,num_cols],mean)
train_sd = sapply(train_set[,num_cols],sd)

#Scale function
scale_num = function(df){
  df[,num_cols]=sweep(df[,num_cols],2,train_means,"-")
  df[,num_cols]=sweep(df[,num_cols],2,train_sd,"/")
  df
}
train_scaled = scale_num(train_set)


test_scale = scale_num(test_set)