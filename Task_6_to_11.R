library (dplyr)
library(tidyr)

e<-data(mpg, package = "ggplot2")

# Task 6

mpg2<- mpg %>% select(manufacturer, model, displ, year, cyl, trans, cty, hwy)

# Task 7

mpg3<- mpg2 %>% mutate(displ2=displ*displ, vol_per_cyl=displ/cyl)
