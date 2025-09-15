# install packages
install.packages(c("tidyverse","car","emmeans","effectsize","performance","broom","kableExtra"))
#library(tidyverse)
d <- read.csv("cropdata.csv")
# Quick Explaratory descriptive Analysis (EDA)
summs = d %>%
  group_by(fert,irr) %>%
  summarise(mean = mean(y),se = sd(y)/sqrt(n()), .groups ="drop")
view(summs)
#Quick data summurisation
library
ggplot(summs,aes(irr,mean,group=fert))+
  geom_line()+
  geom_point((size=2)+
               geom_errorbar(aes(ymin=mean-se,ymax=mean+sd)),
             facet_wrap(~fert,nrow=2))
