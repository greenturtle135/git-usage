library(ggplot2)

## set workign directory
getwd()
setwd("~/Documents/Holly's Stuff/UNI WORK Y3/computer session/MT3/Session 2/Git-usage")

file.choose()
sods_data <- read.csv("stackoverflow-git-data.csv")

g <- ggplot(
  data = sods_data,
  mapping = aes(x = year, y = percentage)) +
  geom_point() +
  geom_smooth(method = "lm") +
  geom_text(
    aes(x = 2020, y = 82.8, label = "only GitHub"),
    nudge_x = 0.2,
    nudge_y = -4) +
  labs(
    x = "Year",
    y = "Percentage who used git",
    title = "Git usage has increased",
    subtitle = "Data from Stackoverflow Developer Survey")

ggsave(filename = "git-usage.png",
       plot = g,
       height = 7.4,
       width = 10.5,
       units = "cm")

sink(file = "regression-summary.txt")
summary(lm(percentage ~ year, data = sods_data))
sink()

## Organising the data and code
## cleaning this up so its easier for people to make sense of 

sods_data <- read.csv("data/stackoverflow-git-data.csv")

...

ggsave(filename = "out/git-usage.png",
       plot = g,
       height = 7.4,
       width = 10.5,
       units = "cm")

sink(file = "out/regression-summary.txt")
summary(lm(percentage ~ year, data = sods_data))
sink()


sink(file = "out/package-versions.txt")
sessionInfo()
sink()

