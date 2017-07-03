library (dplyr)
library(tidyr)

e<-data(mpg, package = "ggplot2")

# Task 6

mpg2<- mpg %>% select(manufacturer, model, displ, year, cyl, trans, cty, hwy)

# Task 7

mpg3<- mpg2 %>% mutate(displ2=displ*displ, vol_per_cyl=displ/cyl)

# Task 8

mpg3 %>% filter(manufacturer == "chevrolet") %>% arrange(desc(vol_per_cyl))

mpg4<- mpg3 %>% group_by(manufacturer, year) %>% summarise(vol_per_cyl =max(vol_per_cyl)) %>% rename(max_vol_per_cyl =vol_per_cyl)

# Task 9
mpg5<- mpg4 %>% spread(year, max_vol_per_cyl)

# Task 10

mpg6<-mpg5 %>% mutate(change = `2008` - `1999`)

# Task 11
mpg6 %>% 
  rename(max_vpc_1999=`1999`, max_vpc_2008 = `2008`) %>% 
  gather(variable, value,max_vpc_1999,max_vpc_2008, change) %>% View
