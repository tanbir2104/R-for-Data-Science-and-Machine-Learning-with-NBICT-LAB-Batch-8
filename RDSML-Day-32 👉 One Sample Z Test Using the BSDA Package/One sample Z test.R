# Installing the BSDA package
#install.packages("BSDA")
library(BSDA)

# Importing the data set
dataset = read.csv("Perfume.csv")
dataset
mean(dataset$Machine.1)
z.test(x = dataset$Machine.1,alternative = "greater",mu = 150,sigma.x = 2,
          )