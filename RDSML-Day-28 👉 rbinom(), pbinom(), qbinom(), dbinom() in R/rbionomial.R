# Explaining rbinorm()
# rbinorm(n,size,prob) generate random numbers from a binomial distribution
# Here:
# n: number of random values to generate
# size: number of trials in each binomial experiment
#prob: probability of success in each trial
rbinom(n=10,size=1,prob=0.5)


# Here:
#10=Number of random values to generate(n=10)
#1=Number of trials in each binomial experiment(size=1)
#0.5=probablity of success 
rbinom(n=10,size=5,prob=0.5)
rbinom(n=10,size=10,prob=0.5)

# Explaining pbinom()
# pbinom gives the cumulative probabiblity of getting fewer successe
# in a binomial distribution
# syntax: pbinom(q,size,prob)
#Here :
# q=The number of successe
# Size = Number of trials
# prob=probability of success in each trial
pbinom(q=5,size=10,prob=0.5)

# The result means theres about a 62.3% chance of getting 5 or fewer 
# in 10 trials (e.g,getting 5 or fewer heads in 10 fair coin tosses)

pbinom(q=3,size=5,prob=0.5)
# Explaining qbinom()
# what is the smallest number of successe x in 10 trials(with 50% success chance)
# that the probability of getting x or fewer
# successes is at least 30%

qbinom(p=.30,size=10,prob=.5)
# p=0.3 = cumulative probability(30%)
# size=10=number of trials (e.g. 10 coin tosse)
#prob=0.5=probability of success


#Explaining the probability of getting exact number of success
dbinom(x=3,size=5,prob=0.5)
# dbinom(x,size,prob)
#x=3=number of success you want
#size=5=number of independent trials
# prob=0.5= probability of success in each trial