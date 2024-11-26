#### Preamble ####
# Purpose: Setup a linear model to describe the relationship between facilities 
#   and area of Toronto libraries.
# Author: Yanzun Jiang
# Date: 25 November 2024
# Contact: yanzun.jiang@mail.utoronto.ca
# License: MIT
# Pre-requisites: Should have downloaded and cleaned the dataset.
# Any other information needed? None.


#### Workspace setup ####
library(tidyverse)
library(arrow)


#### Read data ####
data <- read_parquet("data/02-analysis_data/analysis_data.parquet")


### Model data ####
model <- lm(area ~ facilities + workstations + year, data = data)


#### Save model ####
saveRDS(model, file = "models/model.rds")
