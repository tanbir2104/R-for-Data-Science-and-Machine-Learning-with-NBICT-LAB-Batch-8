#Descriptive statistics using the psych package
install.packages("psych")
library(psych)
data()
AirPassengers 
BOD
#Using the New york airport flight data
install.packages("nycflights13")
library(nycflights13)
nycflights13
attach(nycflights13::flights)
#Lets look at the first 6 records using the head() function
head(nycflights13::flights)#head() data set er uporer part dekay
summary(distance)#Summmary function hocce R er base package 
describe(distance)#describe function psych package er
demo = cbind(arr_delay,dep_delay,distance)
demo
describe(demo)
