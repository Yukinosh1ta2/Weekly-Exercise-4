# Q 4
install.packages("usethis")
library(usethis)
system("git branch --show-current")

# Q 6
library(readr)
library(tidyverse)
library(ggplot2)
olympics <- read_csv("Olympics.csv")

# a. 
olympics <- olympics %>%
  mutate(total.medals = gold + silver + bronze)