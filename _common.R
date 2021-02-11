# Common code to run before knitting each chapter.
library(knitr)
library(tm)
library(ggplot2)
library(Matrix)

data = read.csv(url("https://ucdavisdatalab.github.io/workshop-nlp-healthcare/abstracts.csv"), encoding="UTF-8", stringsAsFactors=FALSE)
tfidf_dtm = readRDS("./data/tfidf_dtm.rds")
