# Data input
data= read.csv("scores.csv")
shapiro.test(data$Male)
shapiro.test(data$Female)
# Checking the homogenity of variance test
var.test(x=data$Male,y=data$Female)



# Running the two sample t test
t.test(x=data$Male,y=data$Female,var.equal = TRUE)

#running the independent sample t test
