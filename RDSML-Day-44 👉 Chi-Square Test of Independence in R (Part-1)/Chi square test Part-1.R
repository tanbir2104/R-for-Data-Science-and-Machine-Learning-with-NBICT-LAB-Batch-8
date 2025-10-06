# Importing the data set
housetasks = read.delim("housetasks.txt" , row.names = 1)
# It is used for frequency or contingency table

#Visualize the contingency table
#contingency table can be visualize using the function ballonplot().
# This function draws a graphical matrix where each cell a dot whose
#size reflects the relative magnitude of the component.

# Install.packages
install.packages("gplots")
#library("gplas.tableots")
dt=as.table(as.matrix(housetasks))
dt
balloonplot(t(dt), main="Housetasks",
            label = F, show.margins = F, xlab = "",
            ylab="")

# It  is also possible to visualize a contingency table 
# as a mosaic plot. This can be done using the function 
# mosaic plot() from the built in R package graphics.

library("graphics")
mosaicplot(dt, shade = T, las = 2,
           main = "Housetasks")
# Blue color indicates that the observed value is higher 
# than the expected value
# Red color indicates that the obsercved value is lower than the expected value

# Compute
chisq = chisq.test(housetasks)
chisq

# Observed count
chisq$observed

# Expected counts 
round(chisq$expected,2)
