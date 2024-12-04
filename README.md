# Relationship between Attributes and Whether DIH Exists in Toronto Libraries

## Overview

This repo contains a study that examines the factors influencing the presence of Digital Innovation Hubs (DIHs) in Toronto libraries. Using the dataset from Open Data Toronto, a logistic regression model was built to do analysis.


## File Structure

The repo is structured as:

-   `data/00-simulated_data` contains the randomly simulated data.
-   `data/01-raw_data` contains the raw data as obtained from Open Data Toronto.
-   `data/02-analysis_data` contains the cleaned dataset that was constructed.
-   `models` contains fitted models. 
-   `other/datasheet` contains the datasheet of the dataset.
-   `other/llm_usage` contains details about LLM chat interactions.
-   `other/sketches` contains sketches of the dataset.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data, as well as build and test the model.


## Statement on LLM usage

The paper was written with the help of ChatGPT-4o, and the entire chat history is available in `other/llm_usage/usage.txt`.
