#Matrix in R
study_hours = c(89,69,45,75,63,54,23,25,57,46)
subject_marks = c(79,53,71,57,63,54,74,77,61,69)
# Creating a matrix just using study_hours  it is only for single vectors
stud_hours_mat = matrix(study_hours)
stud_hours_mat
# Joining two columns in a matrix
student_data = c(study_hours,subject_marks)
student_data
st_mat = matrix(student_data,byrow = FALSE, nrow = 10)
st_mat
# by row = False na dile r bujbe by row = TRUE hobe
# Naming rows and column use colnames function
colnames(st_mat) = c("Hours", "Marks")
st_mat
rownames(st_mat) = c(1:10)
st_mat
# Selecting an element from matrix
st_mat[4,1]
st_mat[6,2]
# data frames in R
summary(st_mat)
student_names = c("Mr1","Ms2","Ms3","Mr4","Ms5")
study_hours = c(20,24,46,62,22)
study_hours
marks = c(40,55,69,54,45)
gender = c("male","Female","Male","Female","Male")
male = c(TRUE,FALSE,TRUE,FALSE,TRUE)
student_data = data.frame(student_names,study_hours,gender)
summary(student_data)
student_data = data.frame(student_names,study_hours,male)
#particular coloumn call
student_data$study_hours
mean(student_data$study_hours)
