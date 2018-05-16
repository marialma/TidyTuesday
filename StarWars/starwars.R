rm(list=ls())
library(plyr)
library(dplyr)
library(tidyverse)

sw <- read_csv("StarWars.csv", skip = 0)
sw <- sw[-1,]

shot_first <- select(sw, 1, 10:16, 30, 35) 
colnames(shot_first)[1:10] <- c("ID", "rank_ep_1", 
                               "rank_ep_2", "rank_ep_3", 
                               "rank_ep_4", "rank_ep_5", 
                               "rank_ep_6", "solo_opinion", "WSF", "Age")

eprank <- select(shot_first, rank_ep_1:rank_ep_6, WSF)
eprank <- na.omit(eprank)
eprank <- gather(eprank, key = "episode", value = "rank", rank_ep_1:rank_ep_6)
eprank$rank <- as.numeric(eprank$rank)

ggplot(eprank, aes(x=WSF))+ geom_bar(fill="gold") + theme_bw()

ggplot(eprank, aes(x = episode, y= rank)) + geom_violin(fill="gold")+ 
  facet_grid(~WSF, scales="free") + scale_x_discrete(labels = c(1:6))


ages <- select(shot_first, WSF, Age)
ages$Age <- factor(ages$Age, levels=c("18-29", "30-44", "45-60", "> 60"))
ages <- na.omit(ages)
ages <- ages %>%
  count(WSF, Age) %>%
  group_by(WSF) %>%
  mutate(pct = n/sum(n))
color <- LaCroixColoR::lacroix_palette("Pamplemousse")
ggplot(ages, aes(WSF, pct, fill=Age)) + geom_col(position = "stack") +
  scale_fill_manual(values = color)