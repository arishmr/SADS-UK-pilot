rm(list = ls())

## Load datasets
alldata <- read.csv("Data/Full_Dataset.csv")
colnames(alldata)

# convert variables to correct type

alldata <- alldata %>% mutate_at(c(
  "PID", "PHQ", "SADS", "age",
  colnames(alldata[,12:20]),   ## PHQ9 scores
  colnames(alldata[,21:36])
), as.numeric)

alldata <- alldata %>% mutate_at(c(
  "Group", "sex", "gender", "ethnicity", "curr.antidep", "ever.antidep"), as.factor)

alldata$Group <- relevel(alldata$Group, ref = "Low Depression Severity")