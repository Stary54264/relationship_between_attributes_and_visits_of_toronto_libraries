#### Preamble ####
# Purpose: Cleans the raw data recorded by Toronto Public Library.
# Author: Yanzun Jiang
# Date: 25 November 2024
# Contact: yanzun.jiang@mail.utoronto.ca
# License: MIT
# Pre-requisites: Should have downloaded the dataset.
# Any other information needed? None.


#### Workspace setup ####
library(tidyverse)
library(arrow)


#### Clean data ####
raw_data <- read_csv("data/01-raw_data/raw_data.csv")

cleaned_data <- raw_data |>
  janitor::clean_names() |>
  filter(physical_branch == 1) |>
  rename(area = square_footage,
         parking = public_parking) |>
  mutate(parking = ifelse(parking == "shared", 0, as.numeric(parking)),
         year = 2024 - present_site_year) |>
  select(area, parking, dih, workstations, year) |>
  tidyr::drop_na()


#### Save data ####
write_parquet(cleaned_data, "data/02-analysis_data/analysis_data.parquet")
