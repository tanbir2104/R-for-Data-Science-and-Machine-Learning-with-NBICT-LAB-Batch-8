# Demonstraion of CLT

# Generate 10000 numbers of uniform distribution
r=runif(10000)
hist(r)
meanr=mean(r)
sdr=sd(r)

# Draw three random sample from the distribuion
samples1=sample(r,4)
samples2=sample(r,4)
samples3=sample(r,4)

mean(samples1)
mean(samples2)

# Run a for loop
cl100=mean(sample(r,100))
for (i in 1:1000){
  cl100=c(cl100,mean(sample(r,100)))
}
hist(cl100)
