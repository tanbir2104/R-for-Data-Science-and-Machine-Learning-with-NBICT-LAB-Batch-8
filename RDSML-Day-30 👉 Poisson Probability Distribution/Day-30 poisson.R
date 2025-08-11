ppois(q=3,lambda=5)
ppois(q=3,lambda=5)-ppois(q=2,lambda=5)
dpois(x=3,lamda=5)


n=seq(0,5)
n
dpois(x=n,lambda=5)
barplot(dpois(x=n,lambda=5))


library(visualize)
visualize.pois(stat=8,lambda = 10,section="upper")
visualize.pois(stat=c(4,4),lambda = 5,section="bounded")
