install.packages("ggplot2")
library(ggplot2)
dataset = mtcars
View(dataset)
#Generating a basic scatter plot using ggplot2 package
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point()
#Changing the point size and shape geom_point
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=3, shape=18)
#Adding the regression line in geom_point
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=3, shape=18) +
  geom_smooth()
