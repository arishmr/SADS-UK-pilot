## Plot histograms / distributions of scores for each item of the SADS and PHQ-9

plotdata <- alldata[,c(1:4,21:36)] %>%
  gather(key = "q",
         value = "score",
         SADS01:SADS16,
         factor_key = T)
ggplot(plotdata, aes(score)) +
  stat_density() +
  facet_wrap(~ q, scale = "fixed") +
  theme_minimal() +
  labs(x = "Score", y = "Density") +
  theme(axis.title = element_text(face="bold"))
ggsave("Figures/SADS Item-Level Scores.png", width = 8, height = 8, bg = "white")


plotdata <- alldata[,c(1:4,12:20)] %>%
  gather(key = "q",
         value = "score",
         PHQ1:PHQ9,
         factor_key = T)
ggplot(plotdata, aes(score)) +
  stat_density() +
  facet_wrap(~ q, scale = "fixed") +
  theme_minimal() +
  labs(x = "Score", y = "Density") +
  theme(axis.title = element_text(face="bold"))
ggsave("Figures/PHQ-9 Item-Level Scores.png", width = 6, height = 6, bg = "white")

rm(plotdata)


## Calculate item-level statistics for SADS

library(psychometric)

data <- alldata[,c(21:36)]

itemexam <- item.exam(data, y = NULL, discrim = F)[,c(1:3,7,8)]
itemexam$Mean <- as.numeric(apply(data, 2, mean))
itemexam <- itemexam %>% relocate(Mean, .before = Sample.SD)
itemexam <- as.data.frame(apply(itemexam, 2, FUN = function (x) {round(x, digits = 2)}))
write.csv(itemexam, "Results/Item-Level Analysis.csv", row.names = T)

rm(data, itemexam)
detach("package:psychometric")
