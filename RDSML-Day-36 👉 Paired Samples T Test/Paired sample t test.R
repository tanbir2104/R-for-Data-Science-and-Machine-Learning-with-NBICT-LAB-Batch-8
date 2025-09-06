# Importing data set
data = read.csv("paired-samples-t-test.csv")
# Calculating the difference
diffs=data$carb - data$carb_protein
diffs
shapiro.test(diffs)

# Checking for outlier for box plot
boxplot(diffs)
 
# Run the paired sample t test
t.test(x=data$carb,y=data$carb_protein,paired=TRUE)

#Running the wilcoxon sighn test
wilcox.test(x=data$carb,y=data$carb_protein,paired=TRUE)

# Calculating mean and sd
mean(data$carb_protein)
sd(data$carb)

# Effect size calculation using cohens d
# 0.2 - small, 0.5 - medium, 0.8 - large 
install.packages("effsize")
library(effsize)
cohen.d(data$carb_protein,data$carb,paired=T)



# A paired samples t test was used to determine whether there was a
# statistically significant mean difference between the distance 
#ran when participants imbibed a carbohydrate protein drink compare
#to a carbohydrate only drink. No outliers were ditected. The 
#assumption of normality was assessed by shapiro wilk test (p=0.78). Participant ran furthure imbibing 
#the carbohydrate protein drink (mean= 11.302 KM, SD = 0.713KM) as opposed to the carbohydrate
#only drink (Mean=11.167 KM, SD = 0.726 KM), a statistically significant mean increase of 0.135 KM, 95% confidence interval
#[0.091,0.181], t(19)=6.352,p<=0.05, cohen"s d estimate = 0.19