## Internal consistency of SADS in this sample

library(psychometric)
colnames(alldata)
data <- alldata[,c(21:36)]
cronbach <- alpha(data)
cronbach.CI <- as.numeric(alpha.CI(cronbach, k = 16, N = 20, level = 0.95))

detach("package:psychometric")
rm(data)

## Correlation between PHQ-9 and SADS scores

cor.test(alldata$PHQ, alldata$SADS)

library(scales)

ggplot(alldata, aes(PHQ, SADS)) +
  geom_point(aes(colour = Group)) +
  geom_smooth(method = "lm", formula = y ~ x, color = alpha("deepskyblue4", 0.5), alpha = 0.2) +
  scale_color_brewer(palette = "Dark2") +
  theme_minimal() +
  theme(axis.title = element_text(face="bold")) +
  theme(legend.position = "bottom") +
  labs(x = "PHQ-9 Total Score", y = "SADS Total Score")
ggsave("Figures/Score Correlation.png", width = 5, height = 5, bg = "white")

detach("package:scales")
