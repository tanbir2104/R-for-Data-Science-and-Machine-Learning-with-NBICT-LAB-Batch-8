# Creating a data frame
dataset = data.frame(dose =c("D0.5","D1","D2"), len=c(4.2,10,29.5))

library(ggplot2)

# Basic bar plot
ggplot(dataset,aes(x=dose,y=len))+
  geom_bar(stat="identity")

# Horizontal bar plot
ggplot(dataset,aes(x=dose,y=len))+
  geom_bar(stat="identity")+coord_flip()

# Changing the width of bars
ggplot(dataset,aes(x=dose,y=len))+
  geom_bar(stat="identity", width =0.5)

# Changing color
ggplot(dataset,aes(x=dose,y=len))+
  geom_bar(stat="identity", width =0.5,color="blue",fill="white")

# Minimal theme with blue fill color
ggplot(dataset,aes(x=dose,y=len))+
  geom_bar(stat="identity", width =0.5,fill="steelblue")+
  theme_minimal()
# Barplot with labels outside bars
ggplot(dataset,aes(x=dose,y=len))+
  geom_bar(stat="identity", width =0.5,fill="steelblue")+
  geom_text(aes(label = len),vjust=-0.5, size = 3,color="#999999")+
  theme_minimal()

# Barplot with labels inside bars
ggplot(dataset,aes(x=dose,y=len))+
  geom_bar(stat="identity", width =0.5,fill="steelblue")+
  geom_text(aes(label = len),vjust=1.6, size = 3,color="white")+
  theme_minimal()

mycardata= mtcars

# Barplot of counts to make a bar plot of counts
# we will use mtcars dataset
ggplot(data = mycardata, aes(x = factor(cyl))) +
  geom_bar(stat = "count", width = 0.7, fill = "steelblue") +
  theme_minimal()
