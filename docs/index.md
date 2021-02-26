---
title: NLP for Healthcare
author: [Dr. Pamela Reynolds, Dr. Wesley Brooks, Arthur Koehl]
date: "2021-02-26"
url: "https://ucdavisdatalab.github.io/workshop-nlp-healthcare"
site: bookdown::bookdown_site
knit: "bookdown::render_book"
---

# Overview

link to lesson plan: [https://ucdavisdatalab.github.io/workshop-nlp-healthcare/](https://ucdavisdatalab.github.io/workshop-nlp-healthcare/)\
link to github repo: [https://github.com/ucdavisdatalab/workshop-nlp-healthcare](https://github.com/ucdavisdatalab/workshop-nlp-healthcare)\
link to data used:   [abstracts.csv](https://ucdavisdatalab.github.io/workshop-nlp-healthcare/abstracts.csv)

If you will be coding along please check that you have R and RStudio installed on your machine.

## Objectives for this Workshop

1. Explain natural language processing in lay terms
2. Give examples of NLP applications for research
3. Evaluate particular challenges posed by working with health data
4. Describe key text mining and NLP metrics for assessing word importance and document similarity
    - Install the 'tm' package in R 
    - Create a corpus and DocumentTermMatrix
    - Calculate word frequencies
    - Calculate TF-IDF weighting 
    - Generate PCA for exploring document similarities
5. identify where to go to learn more!

## Demo introduction

Dr. Sonja Diertrich is a radiation oncologist at UCDMC studying early stage breast cancer. For this coding demo we are using NLP to explore the recent literature on this topic with her lab. 

### About the data

Working with  Blaisdell Medical Library's health librarian Amy Studer, we conducted a pilot systematic search in EMBASE and PubMed on this topic for articles published in the International Journal of Radiation Oncology Biology Physics, Practical Radiation Oncology, and Lancet over the past 5 years. For this demo we are using the titles and abstracts from that search. (See the readME for more information regarding the search strategy used to generate our datatset.) 

### Why R? What is RStudio?

["R"](https://www.r-project.org/) is a programming language and statistical software that interprets scripts. [RStudio](https://rstudio.com/) is an Integrated Development Environment (IDE) for working with R. You need R installed in order to use RStudio, but you don't need RStudio to work with R.

*So why R?*

Faciliates reproducible research workflows

    - integrates with other tools. 
    - designed for data analysis
    - produces high-quality graphics

It's extensible and interdisciplinary

    - free, open-source, well-documented, and cross-platform
    - runs on Mac, PC and Linux. 
    - works with data of all shapes and sizes.
    - large library of external packages available for performing diverse tasks, including text mining and NLP.
    - Large (and growing) community
 
*Should you use R?* Maybe. Use whatever langauge allows you to perform your work and faciliates sharing with your direct colleagues and the broader reserach community. 
