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
  mutate(facilities = kids_stop + leading_reading + clc + dih +
           teen_council + youth_hub + adult_literacy_program,
         year = 2024 - present_site_year) |>
  select(branch_name, square_footage, facilities,
         workstations, year) |>
  rename(name = branch_name,
         area = square_footage) |>
  tidyr::drop_na()


#### Save data ####
write_parquet(cleaned_data, "data/02-analysis_data/analysis_data.parquet")
