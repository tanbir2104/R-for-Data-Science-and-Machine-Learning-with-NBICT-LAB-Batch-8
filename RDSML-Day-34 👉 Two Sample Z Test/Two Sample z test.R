# two sample z test
# Importing the library
library(BSDA)
# Importing the data set
data=  read.csv("Perfume_Two_Sample.csv")
data
machiene1 = sd(data$Machine.1)
machine2 = sd(data$Machine.2)
# Running the z test
z.test(x=data$Machine.1,
       y=data$Machine.2,
       sigma.x = machiene1,
       sigma.y = machine2)
