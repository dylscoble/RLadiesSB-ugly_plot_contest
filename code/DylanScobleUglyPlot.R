library(tidyverse)

sweaters <- read_csv(here::here("data/use_this_data", "holiday_sweaters-2020-12-15-clean.csv")) %>%
  separate_rows(colors, sep = c(", ")) %>% 
  group_by(hs_tf) %>% 
  summarize(sum = length(colors))

ggplot(data=sweaters, aes(x = hs_tf)) +
  geom_bar()  +
  labs(x = "Has a sweater?", 
       y = "Total number of Entries") +
  theme(strip.background = element_rect(fill = "blue"),
        plot.background = element_rect(fill = "pink"),
        legend.background = element_rect(fill = "orange"))

ggsave(here::here("figures/an-plot.jpg"), width = 7, height = 4, dpi = 150)
