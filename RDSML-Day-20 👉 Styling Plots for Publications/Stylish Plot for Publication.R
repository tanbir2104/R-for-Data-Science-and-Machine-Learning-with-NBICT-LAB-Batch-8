# Stylish plot for publication
library(ggplot2)
#install.packages("ggthemes")
library(ggthemes)
#install.packages("viridis")
library(viridis)

# Sample data loadong
df=mtcars
df$cyl= as.factor(df$cyl)

# Stylish plot
ggplot(df,aes(x=wt,y=mpg,color=cyl))+
  geom_point(size=3)+
  scale_color_viridis_d(name="Cylinders")+
  labs(
    title="Fuel Efficiency by car weight",
      x="weight(1000 lbs)",
      y="miles per gallon"
    
  )+
  theme_classic(base_size=14,base_family="serif")+
  theme(plot.title=element_text(face="bold",size=16,hjust = 0.5),
                                axis.title=element_text(face = "bold",size=14),
        axis.text = element_text(size=15),
        legend.position = "right",legend.title = element_text(face="bold"),legend.text =element_text(size=14))


P=ggplot(df,aes(x=wt,y=mpg,color=cyl))+
  geom_point(size=3)+
  scale_color_viridis_d(name="Cylinders")+
  labs(
    title="Fuel Efficiency by car weight",
    x="weight(1000 lbs)",
    y="miles per gallon"
    
  )+
  theme_classic(base_size=14,base_family="serif")+
  theme(plot.title=element_text(face="bold",size=16,hjust = 0.5),
        axis.title=element_text(face = "bold",size=14),
        axis.text = element_text(size=15),
        legend.position = "right",legend.title = element_text(face="bold"),legend.text =element_text(size=14))


P

# Saving the plot for publication
ggsave("publication_ggplot.png",P,width = 6,height= 4,dpi= 300)