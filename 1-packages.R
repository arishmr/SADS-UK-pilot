# Define vector of package names
packages <- c("ggplot2", "RColorBrewer", "tidyverse", "psych", "summarytools", "htmlTable", "officer", "dplyr", "gtsummary", "flextable", "reshape2", "psychometric", "pROC")

# Load packages
for (package in packages) {
  if (!require(package, character.only = TRUE)) {
    install.packages(package)
    library(package, character.only = TRUE)
  } else {
    library(package, character.only = TRUE)
  }
}

rm(packages, package)

