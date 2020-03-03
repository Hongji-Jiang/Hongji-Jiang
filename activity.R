library(tidyverse)
library(mosaic)
library(DataComputing)
data("BabyNames")


a <- BabyNames %>%  
  group_by(name, year)%>%
  filter(name %in% c("John","Jessie","Mary","Anna"))%>%
  summarise(totalPop = sum(count, na.rm=TRUE))

view(a)

a %>% 
  ggplot(aes(x = year, y = totalPop, group = name)) +
  geom_line( size = 1, alpha = 0.5, aes(color = name)) +
  ylab("Popularity") + xlab("Year")
