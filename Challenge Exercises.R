library(tidyverse) 
visitors <- read_csv("data/UK-visitor-numbers.csv")

visitors_with_nations <- visitors %>%
  mutate(
    nation = case_when(
      region == "Northern Ireland" ~ "Northern Ireland",
      region == "Scotland" ~ "Scotland",
      region == "Wales" ~ "Wales",
      TRUE ~ "England"
    )
  )
  
#Within each of the 4 nations, what is the proportion of tourist attractions that have free admission for all visitors?
#view(visitors_with_nations)

visitors_with_nations %>%
  group_by(visitors_with_nations) %>%
  summarise(p = mean(admission == "Free"))



#Calculate the percentage change in visitor admissions from 2021 to 2022. Of the tourist attractions in Scotland, sort into increasing numerical order the types of admission charges based on the mean percentage change in visitor numbers.

#visitors %>%
 # dplyr::filter(region == "Scotland", n_2021 > 0) %>%
 # mutate(p = 100 * (n_2022 - n_2021) / n_2021) %>%
 # group_by(admission) %>%
 # summarise(p = mean(p)) %>%
 # arrange(p)

