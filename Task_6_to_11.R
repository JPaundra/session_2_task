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
