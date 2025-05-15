# Factors in R
# Summary of numeric items
participant_age = c(78,25,68,45,48,36)
summary(participant_age)# "Summary" is used to know the summary statistics

#Finding summary of character data type
profession = c("Doctor","Teacher","Teacher","Businessman","Teacher")
summary(profession)

profession = factor(profession)# To convert vector into factor bcz to know summary
summary(profession)

#Putting the summary in order
brth_month = c("Jan","Dec","Apr","Aug","Jan","Marc","Jun","Apr","Jul","Aug","Sep")
summary(brth_month)
brth = factor(brth_month)#"Factor" is used for convert vector into number
summary(brth_month)
summary(brth)
brth = factor(brth_month,
              ordered = TRUE,
              levels = c("Jan","Feb","Marc","Apr","May","June","July","Aug","Sep","Oct","Nov","Dec"))
summary(brth)#Order function is used for order the data but order has to be arrange first
# List in R
# Lists are used to place number of items in a bundle
a = c(2,4,7)
b = c("Red","Green","Yellow")#C() is used for multiple data
c = "Welcome!"
my_list = list(a,b,c)
my_list
# Naming the list items
my_list = list(Pieces=a,Colour=b,Message=c)
my_list
#Calling a specific data structure
my_list[3]
my_list["Colour"]
my_list$Colour
#Calling specific item from the data structure
my_list$Colour[2]
