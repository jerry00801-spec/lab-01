library(tidyverse) 
visitors <- read_csv("data/UK-visitor-numbers.csv")
visitors %>% head(n = 2)

#visitors %>% count(admission)
#Question 1
#class(visitors$n_2022)
#visitors %>% summarise_all(class)
#visitors %>% arrange(desc(n_2022))
#visitors %>% filter(attraction == "National Museum of Scotland")
#visitors %>% dplyr::filter(attraction == "National Museum of Scotland")
#Exercises

#Which attraction had exactly 565,772 visitors in 2022? Knowsley Safari and Knowsley Hall 
#How many attraction had more than 1 million visitors in 2022?
  