# Importing the dataset
data = read.csv("polynom_data.csv")
attach(data)

# Checking the correlation plot
plot(x,y, main  = "Polynomial Regression Example",pch = 19)

# Fit a quadratic (degree 2) ploynomial regression
model = lm(y ~ poly(x,2,raw=TRUE))

# View the model summary
summary(model)

# Create new data for prediction
x_new = seq(min(x), max(x),length.out=100)
#x_new = data.frame(x_new)
y_pred = predict(model,newdata = data.frame(x=x_new))
pred_data=data.frame(x_new,y_pred)
# Add fitted curve to the plot
lines(x_new,y_pred,col="blue",lwd=2)
# Fit a qubic(degree 3) ploynomial regression

model3 = lm(y ~ poly(x,3,raw=TRUE))
summary(model3)
y_pred3 = predict(model3,newdata = data.frame(x=x_new))
lines(x_new,y_pred3,col="red",lwd=2,lty=2)
legend("topright", legend = c("Degree 2","Degree 3"),
       col=c("blue","red"))
