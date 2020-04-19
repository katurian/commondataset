library(readxl)
library(ggplot2)
library(ggthemes)

CDSGrouped <- read_excel("CDSGrouped.xlsx")

ggplot(CDSGrouped, aes(x = Year, y = Tuition, fill = TuitionType)) +
  geom_col(position = "dodge") +
  ggtitle("Tuition at UNC Chapel Hill (2010-2020)", subtitle = "Source: https://oira.unc.edu/reports/reports-archives/common-data-set/") +
  xlab("") +
  scale_y_continuous(labels = scales::dollar_format()) +
  ylab("") +
  labs(fill = "") +
  scale_colour_economist() +
  theme_economist_white(base_size = 11, base_family= "Veranda", gray_bg = TRUE, horizontal = TRUE) 
