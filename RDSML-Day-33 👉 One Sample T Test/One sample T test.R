# Importing the data set
mydata = read.csv("bottle_data.csv")
mydata
# Checking for the nromality
# Shapiro-wilk Test
shapiro.test(mydata$value)

# One sample t test
t.test(x = mydata$value,mu = 150)
