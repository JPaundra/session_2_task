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
