# One way Anova
#Importing the d
data = PlantGrowth

#Importing the dplyr packag
install.packages("dplyr")
library(dplyr)
# Computing the group means, sd, and standard de
stat = data %>% 
stats = data %>% 
  group_by(group) %>% 
  summarise(
    mean = mean(weight),
    sd = sd(weight),
    se = sd(wight)/ sqrt(n())
  )
print(stats)
stats = data %>% 
stats = data %>% 
group_by(group) %>% 
summarise(
    mean = mean(weight),
    sd = sd(weight),
    se = sd(weight)/ sqrt(n())
  )
print(stats)
# Creating group wise box plots
boxplot(weight ~ group, data = PlantGrowth, main = "PlantGrowth data",
        ylab = "Dried weight of plants", col = "lightgray")

install.packages("ggpubr")
