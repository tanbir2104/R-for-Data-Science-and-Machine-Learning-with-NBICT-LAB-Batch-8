#set up package and data loading
install.packages(c("e1071","dplyr"))
library(e1071)
library(ggplot2)
library(dplyr)

#loading the data set
dataset = read.csv("day.csv")
dataset

# Basic cleaning and features selection
bike = dataset %>%
  select(cnt,temp,atemp,hum,windspeed,season,yr,mnth,holiday
         ,weekday,workingday,weathersit)

# Convert categorical variables to factor
bike = bike %>%
  mutate(
    season = factor(season),
    yr = factor(yr),
    mnth = factor(mnth),
    holiday = factor(holiday),
    weekday = factor(weekday),
    workingday = factor(workingday),
    weathersit = factor(weathersit),
    
  )
str(bike)

# Train/Test Split
set.seed(123)
n = nrow(bike)
n
indices = seq_len
train_idx = sample(indices,Size=0.7*n)
train
