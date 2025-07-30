#Installing the visualize package

install.packages("visualize")
library(visualize)
# Visualize normal distribution
pnorm(-1.96)
visualize.norm(-1.96)
visualize.norm(1.96,section = "upper")
visualize.norm(c(-1.96,1.96),section = "bounded")
visualize.norm(c(-1.96,1.96),section = "tails")
visualize.norm(c(-1,1),section = "bounded")
visualize.norm(c(-3,3),section = "bounded")
visualize.norm(c(-3,3),section = "tails")
pnorm(2)
1-pnorm(2)
visualize.norm(2,section = "upper")
visualize.norm(77,mu=75,sd=1,section="upper")
visualize.norm(77,mu=75,sd=1)
pnorm(77,mean=75,sd=1)
