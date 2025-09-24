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

# b
selected_countries <- c("United States", "France", "Germany", "Russia", "China")

gold_plot <- olympics %>%
  filter(country %in% selected_countries) %>%
  group_by(year, country) %>%
  summarise(total_gold = sum(gold, na.rm = TRUE)) %>%
  ggplot(aes(x = year, y = total_gold, color = country)) +
  geom_line(size = 1.2) +
  labs(title = "Gold Medals Over Time",
       y = "Gold Medals",
       x = "Year")