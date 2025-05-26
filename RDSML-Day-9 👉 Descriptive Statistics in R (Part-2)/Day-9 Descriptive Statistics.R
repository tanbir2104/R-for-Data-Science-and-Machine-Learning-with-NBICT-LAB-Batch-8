# Descriptive statistics using psych package

#install.packages("psych")
library(psych)

# Using the New York airport flight data
#install.packages("nycflights13")
attach(nycflights13::flights)

# Lets look at the first 6 records using the head() function
head(nycflights13::flights)
distance

summary(distance)
describe(distance)

demo <- cbind(arr_delay, dep_delay, distance)
describe(demo)

colnames(demo) <- c('Arrival delay', 'Departure Delay', 'Distance Travelled')
describe(demo)

hist(dep_delay)
# How to group descriptve statistics
describeBy(distance, group=carrier)

# two levels of aggregation
aggregate(distance, by=list(carrier, month), FUN=mean, na.rm=T)
data()
BOD
# Introducing the colnames ()function
colnames(demo) = c('Arrival delay', 'Departure Delay', 'Distance Travelled')
describe(demo)
# Introducing the hist() function
summary(dep_delay)
dep_delay
hist(dep_delay)
# How to group descriptve statistics
carrier
summary(carrier)
carrierfact = factor(carrier)
carrierfact
summary(carrierfact)

describeBy(distance, group=carrier)
# two levels of aggregation
aggregate(distance, by = list(carrier, month) , Fun=mean, na.rm = T)
aggregate(distance, by=list(carrier, month), FUN=mean, na.rm=T)
aggregate(distance, by=list(carrier, month), FUN=sd, na.rm=T)
