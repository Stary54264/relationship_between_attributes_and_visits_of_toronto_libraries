#### Preamble ####
# Purpose: Tests the cleaned data recorded by Toronto Public Library.
# Author: Yanzun Jiang
# Date: 25 November 2024
# Contact: yanzun.jiang@mail.utoronto.ca
# License: MIT
# Pre-requisites: Should have downloaded and cleaned the dataset.
# Any other information needed? None.


#### Workspace setup ####
library(tidyverse)
library(testthat)
library(arrow)


#### Test data ####
data <- read_parquet("data/02-analysis_data/analysis_data.parquet")

# Test that the dataset has 100 rows
test_that("dataset has 100 rows", {
  expect_equal(nrow(data), 100)
})

# Test that the dataset has 5 columns
test_that("dataset has 5 columns", {
  expect_equal(ncol(data), 5)
})

# Test that the 'branch_name' column is character type
test_that("'branch_name' is character", {
  expect_true(all(is.character(data$branch_name)))
})

# Test that the 'square_footage' column is numeric type
test_that("'square_footage' is numeric", {
  expect_true(all(is.numeric(data$square_footage)))
})

# Test that the 'facilities' column is numeric type
test_that("'facilities' is numeric", {
  expect_true(all(is.numeric(data$facilities)))
})

# Test that the 'workstations' column is numeric type
test_that("'workstations' is numeric", {
  expect_true(all(is.numeric(data$workstations)))
})

# Test that the 'present_site_year' column is numeric type
test_that("'present_site_year' is numeric", {
  expect_true(all(is.numeric(data$present_site_year)))
})

# Test that there are no missing values in the dataset
test_that("no missing values in dataset", {
  expect_true(all(!is.na(data)))
})

# Test that the 'square_footage' column is above 0
test_that("'square_footage' column is above 0", {
  expect_true(all(data$square_footage >= 0))
})

# Test that the 'facilities' column is between 0 and 7
test_that("'facilities' column is between 0 and 7", {
  expect_true(all(data$facilities >= 0) && all(data$facilities <= 7))
})

# Test that the 'workstations' column is above 0
test_that("'workstations' column is above 0", {
  expect_true(all(data$workstations >= 0))
})

# Test that the 'present_site_year' column is below 2024
test_that("'present_site_year' column is below 2024", {
  expect_true(all(data$present_site_year <= 2024))
})
