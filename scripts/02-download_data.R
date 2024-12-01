#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto.
# Author: Yanzun Jiang
# Date: 25 November 2024
# Contact: yanzun.jiang@mail.utoronto.ca
# Pre-requisites: None.
# Any other information needed? None.


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)


#### Download data ####
# get package
package <- show_package("f5aa9b07-da35-45e6-b31f-d6790eb9bd9b")

# get all resources for this package
resources <- list_package_resources("f5aa9b07-da35-45e6-b31f-d6790eb9bd9b")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
raw_data <- filter(datastore_resources, row_number()==1) |> get_resource()


#### Save data ####
write_csv(raw_data, "data/01-raw_data/raw_data.csv") 
