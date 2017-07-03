# install.packages("nycflights13")

# setting library
library(nycflights13)
library(tidyverse)

# load data
flights %>% tbl_df

airlines %>% tbl_df

weather %>% tbl_df

# Task 12

flights2<- flights %>% select(origin, year, month, day, hour,sched_dep_time, 
                              dep_delay, carrier)
weather2<- weather %>% select(origin, year, month, day, hour,
                              precip, wind_speed, visib)


inner_join(flights,weather)

left_join(flights2, weather2)
# NA is when in weather2 no result can be matched for that key

# Task 13

good_weather_delays<- inner_join(flights2, weather2) %>% 
  filter(precip ==min(precip, na.rm = TRUE), 
         wind_speed == min(wind_speed, na.rm = TRUE), 
         visib == max(visib, na.rm = TRUE))

good_weather_delays %>% 
  group_by(carrier) %>% 
  summarise(dep_delay=mean(dep_delay, na.rm=TRUE)) %>%
  arrange(dep_delay) %>%
  inner_join(airlines)



# Task 14