rm(list = ls())

## Load datasets
alldata <- read.csv("Data/Full_Dataset.csv")
colnames(alldata)

# convert variables to correct type

alldata <- alldata %>% mutate_at(c(
  "PID", "PHQ", "SADS",
  colnames(alldata[,9:17]),   ## PHQ9 scores
  colnames(alldata[,18:33])
), as.numeric)

alldata <- alldata %>% mutate_at(c(
  "Group", "sex", "curr.antidep", "ever.antidep"), as.factor)

alldata$Group <- relevel(alldata$Group, ref = "Low Depression Severity")
