#setting library
library(tidyverse)
library(ggplot2)

# data set
mpg %>% tbl_df

# Task 1

ggplot(data= mpg, mapping = aes(x = displ, y=hwy))+ geom_point(aes(colour=trans))

# Task 2

ggplot(data= mpg, mapping = aes(x = displ, y=hwy))+ 
  geom_point(aes(colour="red"))+
  geom_smooth()

# Task 3

ggplot(data= mpg, mapping = aes(x = displ, y=hwy, colour=drv))+ 
  geom_point()+
  geom_smooth(method="lm",se=FALSE)

# Task 4
ggplot(data= mpg, mapping = aes(x = displ, y=hwy, colour=cyl))+ 
  geom_point()+
  geom_smooth()

# Task 5

ggplot(data=mpg, mapping=aes(x=displ, y= hwy, colour=factor(cyl)))+
  geom_point()+
  geom_smooth(method="lm", se=FALSE)+
  facet_wrap(~year, labeller = as_labeller(c('1999' = "Model year 1999", '2008' = "Model year 2008")))+
  labs(x="Displacement", 
       y="MPG, Highway",
       colour = "Cylinders",
       title= "Fuel economy and engine size") +
  scale_y_log10(breaks = c(20,30,40))+
  scale_x_log10(breaks= c(2,3,4,5,6,7))



