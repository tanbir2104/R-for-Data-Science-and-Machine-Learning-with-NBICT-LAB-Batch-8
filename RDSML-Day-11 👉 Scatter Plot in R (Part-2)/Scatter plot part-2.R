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
ggplot(dataset,aes(x = wt, y = mpg)) + 
  geom_point(size=3, shape=18) +
  geom_smooth(method = lm)
#remove the confidence interval
ggplot(dataset,aes(x = wt, y = mpg)) + 
  geom_point() +
  geom_smooth(method = lm, se = FALSE)
#Loess method
ggplot(dataset,aes(x = wt, y = mpg)) + 
  geom_point() +
  geom_smooth()
# Change the line type and color
ggplot(dataset,aes(x = wt, y = mpg)) + 
  geom_point(size=3, shape=18) +
  geom_smooth(method = lm, linetype = "dotted", color ="darkblue")
# Changing the color of confidence interval
ggplot(dataset,aes(x = wt, y = mpg)) + 
  geom_point(size=3, shape=18,color = "blue") +
  geom_smooth(method = lm, linetype = "dotted", color ="darkred",
             fill = "blue" )
# Scatter plot with multiple groups

# Converting the cyl coloumn from a numeric to factor
dataset$cyl = as.factor(dataset$cyl)
class(dataset$cyl)
# Changing the point shapes by the levels of cyl
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl)) +
  geom_point()
# Changing point shape and colour
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl, color = cyl)) +
  geom_point()
# Changing the point shape, colors and sizes
ggplot(dataset, aes(x = wt, y = mpg, , color = cyl, size = cyl)) +
  geom_point()