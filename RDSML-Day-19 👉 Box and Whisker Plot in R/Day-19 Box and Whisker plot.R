# Loading the data set
myData=ToothGrowth

# Converting the variable dose from a numeric to a factor variable
myDatadose=as.factor(myData$dose)
class(myDatadose)

library(ggplot2)
ggplot(myData,aes(x=myDatadose,y=len)) +
  geom_boxplot()

# Rotating the box plot
ggplot(myData,aes(x=myDatadose,y=len)) +
  geom_boxplot() +
  coord_flip()

#Notched box plot
ggplot(myData,aes(x=myDatadose,y=len)) +
  geom_boxplot(notch = TRUE)

# Changing outlier, color, shape, and size
ggplot(myData,aes(x=myDatadose,y=len)) +
  geom_boxplot(outlier.color = "red",outlier.shape = 6,outlier.size =5 )

# Choosing which items to display
ggplot(myData,aes(x=myDatadose,y=len)) +
  geom_boxplot(outlier.color = "red",outlier.shape = 6,outlier.size =5 )+
  scale_x_discrete(limits=c("2"))

# Changing box plot line colors by groups
ggplot(myData,aes(x=myDatadose,y=len,color=dose)) +
  geom_boxplot()

# Changing the item order
ggplot(myData,aes(x=myDatadose,y=len,color=dose)) +
  geom_boxplot()+
  scale_x_discrete(limits=c("2","0.5","1"))

# Box plot with multiple groups
ggplot(myData,aes(x=myDatadose,y=len,fill=supp)) +
  geom_boxplot()

# Changing the position
ggplot(myData,aes(x=myDatadose,y=len,fill=supp)) +
  geom_boxplot(position = position_dodge(1))
