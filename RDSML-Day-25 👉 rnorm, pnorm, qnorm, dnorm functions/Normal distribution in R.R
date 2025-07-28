# rnorm 
x=rnorm(1000,mean=0,sd=1)
mean(x)
sd(x)
x
x
y=rnorm(100,mean=100,sd=3)
y
mean(y)
sd(y)

#pnorm

# At z=0 then the value of probability is 
pnorm(1.96)
pnorm(-1.96,)
pnorm(-1.64)

#Qnorm
qnorm(0.025)
qnorm(0.05)

#dnorm
# Y axis value for z=0
dnorm(0)

# Lets use dnorm to draw the normal distribution
zvalues=seq(-4.0, 4.0,by = 0.1)
zvalues
dvalues=dnorm(zvalues)
dvalues
plot(zvalues,dvalues)
