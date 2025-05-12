# Vectors in R
# Creating a vector using c() command it is used for storing data
student.height = c(60,69,55,62)
student.height
# To check vector class 
is.numeric(student.height) #Is it numeric class
is.logical(student.height) # Is it logical

# R automatically convert numeric to text when you have text item in vector
b = c(5,6,"sv") 
b

# We can convert data types without convert character to numeric
# For example numeric to character
a <- c(1,2,3,4,5) # = & <- are same
class(a)
class(student.height)
as.character(a)
class(a)
a
class(a)
a = as.character(a)
class(a)

# Logical operator true and false when converted to numeric
# TRUE coverts to 1 and FALSE converted to 1
d = c(TRUE,FALSE,TRUE,FALSE)
d = as.numeric(d)


# Convert numeric to logical(1 or any number other than 0 converts to TRUE
# 0 converts to FALSE
class(d)
d = as.logical(d)
d
e = c(1,0,0,1,0,23,-7,0)
e = as.logical(e)
e
# Creating sequential vector
# Creating a vector starting from 1 to 10
my.seq = c(1:100)#: used in sequential data
my.seq # row indicate item that means which number is fall in this item

# Creating sequential vector using seq() function
new.seq = c(seq(1,10))# if seq use no : is required
new.seq
# sequence in step of 3
new.seq = c(seq(1,10, by = 3))# "by" using when gap required among number
new.seq
# Vectors can have character
names = c ("Elias","Tanbir","Rima","sumi")
names
class(names)
names [2] # [] is used to locate the item 
names
names [2:3]
# Assigning name to vector value
my.value = c(4,9,7,8,11)
names(my.value) = c("a","b","c","d","e")
my.value
my.value["c"]
