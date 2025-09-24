# Q 4
install.packages("usethis")
library(usethis)
system("git branch --show-current")

# Q 7

# a
delegation_1992 <- olympics %>%
  filter(year == 1992) %>%
  select(country, athletes) %>%
  arrange(desc(athletes))