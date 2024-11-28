# Relationship between Attributes and Whether DIH Exists in Toronto Libraries

## Overview

This repo provides students with a foundation for their own projects associated with *Telling Stories with Data*. You do not need every aspect for every paper and you should delete aspects that you do not need.


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

## Criteria (Delete When Completed)

- [X] R/Python cited

R (and/or Python) is properly referenced in the main content and in the reference list. If not, then paper gets 0 overall.

- [X] Data cited

Data are properly referenced in the main content and in the reference list. If not, then paper gets 0 overall.

- [X] Class paper

There is no sign this is a class project. Check the rproj and folder names, the README, the title, code comments, etc. If there is any sign this is a class paper, then paper gets 0 overall.

- [X] LLM documentation

A separate paragraph or dot point must be included in the README about whether LLMs were used, and if so how. If auto-complete tools such as co-pilot were used this must be mentioned. If chat tools such as ChatGPT, were used then the entire chat must be included in the usage text file. If not, then paper gets 0 overall.

- [X] Title

An informative title is included that explains the story, and ideally tells the reader what happens at the end of it. 'Paper X' is not an informative title. Use a subtitle to convey the main finding. Do not use puns (you can break this rule once you're experienced).

- [X] Author, date, and repo

The author, date of submission in unambiguous format, and a link to a GitHub repo are clearly included. (The later likely, but not necessarily, through a statement such as: 'Code and data supporting this analysis is available at: LINK').

- [ ] Abstract

An abstract is included and appropriately pitched to a non-specialist audience. The abstract answers: 1) what was done, 2) what was found, and 3) why this matters (all at a high level). Likely four sentences. Abstract must make clear what we learn about the world because of this paper.

- [X] Introduction

The introduction is self-contained and tells a reader everything they need to know including: 1) broader context to motivate; 2) some detail about what the paper is about; 3) a clear gap that needs to be filled; 4) what was done; 5) what was found; 6) why it is important; 7) the structure of the paper. A reader should be able to read only the introduction and know what was done, why, and what was found. Likely 3 or 4 paragraphs, or 10 per cent of total.

- [X] Estimand

The estimand is clearly stated, in its own paragraph, in the introduction.

- [X] Data

A sense of the dataset should be communicated to the reader. The broader context of the dataset should be discussed. All variables should be thoroughly examined and explained. Explain if there were similar datasets that could have been used and why they were not. If variables were constructed then this should be mentioned, and high-level cleaning aspects of note should be mentioned, but this section should focus on the destination, not the journey. It is important to understand what the variables look like by including graphs, and possibly tables, of all observations, along with discussion of those graphs and the other features of these data. Summary statistics should also be included, and well as any relationships between the variables. You are not doing EDA in this section--you are talking the reader through the variables that are of interest. If this becomes too detailed, then appendices could be used. Basically, for every variable in your dataset that is of interest to your paper there needs to be graphs and explanation and maybe tables.

- [ ] Measurement

A thorough discussion of measurement, relating to the dataset, is provided in the data section. Please ensure that you explain how we went from some phenomena in the world that happened to an entry in the dataset that you are interested in.

- [ ] Model

Present the model clearly using appropriate mathematical notation and plain English explanations, defining every component. Ensure the model is well-explained, justified, appropriate, and balanced in complexity—neither overly simplistic nor unnecessarily complicated—for the situation. Variables should be well-defined and correspond with those in the data section. Explain how modeling decisions reflect aspects discussed in the data section, including why specific features are included (e.g., using age rather than age groups, treating province effects as levels, categorizing gender). If applicable, define and justify sensible priors for Bayesian models. Clearly discuss underlying assumptions, potential limitations, and situations where the model may not be appropriate. Mention the software used to implement the model, and provide evidence of model validation and checking—such as out-of-sample testing, RMSE calculations, test/training splits, or sensitivity analyses—addressing model convergence and diagnostics (although much of the detail make be in the appendix). Include any alternative models or variants considered, their strengths and weaknesses, and the rationale for the final model choice.

- [ ] Results

Results will likely require summary statistics, tables, graphs, images, and possibly statistical analysis or maps. There should also be text associated with all these aspects. Show the reader the results by plotting them where possible. Talk about them. Explain them. That said, this section should strictly relay results. Regression tables must not contain stars. Use modelsummary to include a table and graph of the estimates.

- [ ] Discussion

Some questions that a good discussion would cover include (each of these would be a sub-section of something like half a page to a page): What is done in this paper? What is something that we learn about the world? What is another thing that we learn about the world? What are some weaknesses of what was done? What is left to learn or how should we proceed in the future?

- [ ] Prose

All aspects of submission should be free of noticeable typos, spelling mistakes, and be grammatically correct. Prose should be coherent, concise, clear, and mature. Remove unnecessary words. Do not use the following words/phrases: 'advanced', 'all-encompassing', 'apt', 'backdrop', 'beg the question', 'bridge/s the/a gap', comprehensive', 'critical', 'crucial', 'data-driven', 'delve/s', 'drastic', 'drives forward', 'elucidate/ing', 'embark/s', 'exploration', 'fill that/the/a gap', 'fresh perspective/s', 'hidden factor/s', 'imperative', 'insights from', 'insight/s', 'interrogate', 'intricate', 'intriguing', 'key insights', 'kind of', 'leverage', 'meticulous/ly', 'multifaceted', 'novel', 'nuance', 'offers/ing crucial insight', 'plummeted', 'profound', 'rapidly', 'reveals', 'shed/s light', 'shocking', 'soared', 'unparalleled', 'unveiling', 'valuable', 'wanna'.

- [ ] Cross-references

All figures, tables, and equations, should be numbered, and referred to in the text using cross-references. The telegraphing paragraph in the introduction should cross reference the rest of the paper.

- [ ] Captions

All figures and tables have detailed and meaningful captions. They should be sufficiently detailed so as to make the main point of the figure/table clear even without the accompanying text. Do not say 'Histogram of...' or whatever else the figure type is.

- [ ] Graphs/tables/etc

Graphs and tables must be included in the paper and should be to well-formatted, clear, and digestible. Graphs should be made using ggplot2 and tables should be made using tinytable. They should serve a clear purpose and be fully self-contained. Graphs and tables should be appropriately sized, colored, and labelled. Variable names should not be used as labels. Tables should have an appropriate number of decimal places and use comma separators for thousands. Don't use boxplots, but if you must then you must overlay the actual data.

- [ ] Surveys, sampling, and observational data appendix

Please include an appendix where you focus on some aspect of surveys, sampling or observational data, related to your paper. This should be an in-depth exploration, akin to the "idealized methodology/survey/pollster methodology" sections of Paper 2. Some aspect of this is likely covered in the Measurement sub-section of your Data section, but this would be much more detailed, and might include aspects like simulation and linkages to the literature, among other aspects.

- [ ] Referencing

All data, software, literature, and any other relevant material, should be cited in-text and included in a properly formatted reference list made using BibTeX. A few lines of code from Stack Overflow or similar, would be acknowledged just with a comment in the script immediately preceding the use of the code rather than here. But larger chunks of code should be fully acknowledged with an in-text citation and appear in the reference list. Check in-text citations and that you have not accidentally used (@my_cite) when you needed [@my_cite]. R packages and all other aspects should be correctly capitalized, and name should be correct e.g. use double braces appropriately in the BibTeX file.

- [ ] Commits

There are at least a handful of different commits, and they have meaningful commit messages.

- [ ] Sketches

Sketches are included in a labelled folder of the repo, appropriate, and of high-quality.

- [X] Simulation

The script is clearly commented and structured. All variables are appropriately simulated in a sophisticated way including appropriate interaction between simulated variables.

- [X] Tests

High-quality extensive suites of tests are written for the both the simulated and actual datasets. These suites must be in separate scripts. The suite should be extensive and put together in a sophisticated way using packages like testthat, validate, pointblank, or great expectations.

- [X] Parquet

The analysis dataset is saved as a parquet file. (The raw data should be saved in whatever format it came.)

- [ ] Reproducible workflow

Use an organized repo with a detailed README and an R project. Thoroughly document code and include a preamble, comments, nice structure, and style code with styler or lintr. Use seeds appropriately. Avoid leaving install.packages() in the code unless handled sophisticatedly. Exclude unnecessary files from the repo; avoid hard-coded paths and setwd(). Use base pipe not magrittr pipe. Comment on and close all GitHub issues. Deal with all branches.

- [ ] Enhancements

You should pick at least one of the following and include it to enhance your submission: 1) a datasheet for the dataset; 2) a model card for the model; 3) a Shiny application; 4) an R package; or 5) an API for the model. If you would like to include an enhancement not on this list please email the instructor with your idea.

- [ ] Miscellaneous
There are always students that excel in a way that is not anticipated in the rubric. This item accounts for that.
