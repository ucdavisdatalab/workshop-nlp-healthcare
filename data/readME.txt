Intro to NLP for Health Data, UCDMC Health Data Science Day
UC Davis DataLab: Data Science and Informatics
Date: 10 February 2020
Prepared by: Pamela Reynolds
Contact: datalab@ucdavis.edu

# Repository

github.com/ucdavisdatalab/workshop-nlp-healthcare
includes: data, code, workshop lesson
contributors: P Reynolds, W Brooks, A Koehl, A Studer

# Workflow

1. Pilot systematic literature review of 3 pre-identified journals over the past 5 years. 
2. Endnote file conversion to .csv. Duplicates removed.
3. Text from abstracts run through DataLab's text mining and NLP report.
4. PCA on TF-IDF weighting.

# Data

## Search Strategy: Pilot Systematic Literature Review

Topic: Treatment of early stage breast cancer with radiation therapy
Search date: 27 January 2020
Performed by: Amy Studer, health sciences librarian, Blaisdell Medical Library
Platforms: EMBASE and PubMed
Details:

Keywords provided by team:
­	Breast cancer
­	Early breast cancer
­	Radiation therapy

Articles from the past five years in three selected journals: 
­	International Journal of Radiation Oncology Biology Physics
­	Practical Radiation Oncology
­	Lancet

Study types: 
­	trial
­	clinical trial
­	retrospective study
­	randomized trial
­	practice guideline
­	consensus

## MetaData

data file: abstracts-datafied.csv
location: github.com/ucdavisdatalab/workshop-nlp-healthcare/data

authors: journal article author names. Note: this was not cleaned.
year: publication year
title: article title.
journal: name of the journal
text: full text from the abstract. Note: future cleaning required (e.g., "Elsevier Ltd. All rights reserved.")

## Cleaning

Duplicates were programmatically removed.
Standard text mining report cleaning actions (see code).