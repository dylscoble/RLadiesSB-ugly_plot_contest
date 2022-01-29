library(tidyverse)

sweaters <- read_csv(here::here("data/use_this_data", "holiday_sweaters-2020-12-15-clean.csv")) %>%
  group_by(hs_tf)

ggplot(data=sweaters, aes(x = hs_tf)) +
  geom_bar(fill="#eebb00") +
  facet_wrap(~colors) +
  labs(x = "Has a sweater?", 
       y = "Total number of Entries",
       title = "How many people in this dataset have sweaters, by color:") +
  theme(plot.title = element_text(face = "bold", color="#ffa800"),
        panel.grid = element_line(color="#00ff00"),
        axis.title = element_text(color="#ffa000"),
        axis.text = element_text(color="#ff8800"),
        panel.background = element_rect(fill = "#ffc000"),
        plot.background = element_rect(fill = "#ffbb00"),
        strip.background = element_rect(fill = "#945300"),
        strip.text = element_text(color = "#8c6f0f"),
        legend.background = element_rect(fill = "orange"))

ggsave(here::here("figures/an-plot.pdf"), width = 7, height = 4, dpi = 150)
