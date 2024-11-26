#### Preamble ####
# Purpose: Simulates a dataset of Toronto libraries.
# Author: Yanzun Jiang
# Date: 25 November 2024
# Contact: yanzun.jiang@mail.utoronto.ca
# License: MIT
# Pre-requisites: None.
# Any other information needed? None.


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
set.seed(1125)

# Create a dataset by randomly assigning states and parties to divisions
simulated_data <- tibble(
  name = rep("XXX", 50),
  area = round(rexp(50, 1 / 20000)),
  facilities = rbinom(50, 7, 0.3),
  workstations = round(rexp(50, 1 / 10)),
  year = round(runif(50, 1900, 2024))
)


#### Save data ####
write_csv(simulated_data, "data/00-simulated_data/simulated_data.csv")
