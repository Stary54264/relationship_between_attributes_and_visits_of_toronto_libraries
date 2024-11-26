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

# Test that the dataset has 6 columns
test_that("dataset has 6 columns", {
  expect_equal(ncol(data), 6)
})

# Test that the 'name' column is character type
test_that("'name' is character", {
  expect_true(all(is.character(data$name)))
})

# Test that the 'area' column is numeric type
test_that("'area' is numeric", {
  expect_true(all(is.numeric(data$area)))
})

# Test that the 'parking' column is numeric type
test_that("'parking' is numeric", {
  expect_true(all(is.numeric(data$parking)))
})

# Test that the 'dih' column is numeric type
test_that("'dih' is numeric", {
  expect_true(all(is.numeric(data$dih)))
})

# Test that the 'workstations' column is numeric type
test_that("'workstations' is numeric", {
  expect_true(all(is.numeric(data$workstations)))
})

# Test that the 'year' column is numeric type
test_that("'year' is numeric", {
  expect_true(all(is.numeric(data$year)))
})

# Test that there are no missing values in the dataset
test_that("no missing values in dataset", {
  expect_true(all(!is.na(data)))
})

# Test that the 'area' column is above 0
test_that("'area' column is above 0", {
  expect_true(all(data$area > 0))
})

# Test that the 'parking' column is above 0
test_that("'parking' column is above 0", {
  expect_true(all(data$parking >= 0))
})

# Test that the 'dih' column is 0 or 1
test_that("'dih' column is 0 or 1", {
  expect_true(all(data$dih == 0 | data$dih == 1))
})

# Test that the 'workstations' column is above 0
test_that("'workstations' column is above 0", {
  expect_true(all(data$workstations >= 0))
})

# Test that the 'year' column is above 0
test_that("'year' column is above 0", {
  expect_true(all(data$year >= 0))
})
