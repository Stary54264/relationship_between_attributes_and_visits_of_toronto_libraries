#### Preamble ####
# Purpose: Setup a linear model to describe the relationship between facilities
#   and area of Toronto libraries.
# Author: Yanzun Jiang
# Date: 25 November 2024
# Contact: yanzun.jiang@mail.utoronto.ca
# Pre-requisites: Should have downloaded and cleaned the dataset.
# Any other information needed? None.


#### Workspace setup ####
library(tidyverse)
library(rstanarm)
library(arrow)


#### Read data ####
data <- read_parquet("data/02-analysis_data/analysis_data.parquet")


### Model data ####
model <-
  stan_glm(formula = dih ~ area + parking + workstations + year,
           data = data,
           family = binomial(link = "logit"),
           prior =
           normal(location = 0, scale = 2.5, autoscale = TRUE),
           prior_intercept =
           normal(location = 0, scale = 2.5, autoscale = TRUE),
           seed = 1125)


#### Save model ####
saveRDS(model, file = "models/model.rds")
