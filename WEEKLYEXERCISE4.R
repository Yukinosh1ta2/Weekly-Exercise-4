# Q 4
install.packages("usethis")
library(usethis)
system("git branch --show-current")

# Q 6
library(readr)
library(tidyverse)
library(ggplot2)
olympics <- read_csv("Olympics.csv")

# a
olympics <- olympics %>%
  mutate(total.medals = gold + silver + bronze)
# b
gold_by_country <- olympics %>%
  group_by(country) %>%
  summarise(total_gold = sum(gold, na.rm = TRUE))