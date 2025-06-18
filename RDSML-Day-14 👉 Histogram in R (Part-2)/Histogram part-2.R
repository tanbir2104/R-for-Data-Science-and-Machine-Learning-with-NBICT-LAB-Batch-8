# Importing the data set
dataset= read.csv("data.csv")
# Importing the library
library(ggplot2)

# Creating the basic histogram
ggplot(dataset, aes(x=weight))+
  geom_histogram(color="white")

# Changing histogram plot line colors by groups
ggplot(dataset, aes(x=weight,fill=sex))+
  geom_histogram(color="white",alpha=0.5,position = "identity")

# we can change the position adjustment 
# to use for overlapping points on the layer
# Possible values for the arguments position are
# "identity", "stack", "dodge", Default value is "stack"

# Interleaved histograms
ggplot(dataset, aes(x=weight,fill=sex))+
  geom_histogram(color="white",alpha=0.5,position = "stack")+
  theme(legend.position = "top")

# The plyr package is used to calculate 
#the mean weight of each group

install.packages("plyr")
library(plyr)
group_mean = ddply(dataset,"sex",summarise,grp.mean=mean(weight))
group_mean 

# Adding the mean line by group

plot = ggplot(dataset, aes(x = weight, fill = sex)) +
  geom_histogram(color = "white", alpha = .5, position = "dodge") +
  geom_vline(data = group_mean, aes(xintercept = grp.mean, color = sex), 
             linetype = "dashed") +
  theme(legend.position = "top")
plot

# Using custom color palettes
plot + scale_color_manual(values=c("#999999","#E69F00"))+
  scale_fill_manual(values=c("#999999","#E69F00"))

#  Using color brewer color palettes
plot+scale_color_brewer(palette = "Dark2")+
  scale_fill_brewer(palette ="Dark2" )

# Using a greay scale
plot + scale_color_grey()+scale_fill_grey()+theme_classic()
