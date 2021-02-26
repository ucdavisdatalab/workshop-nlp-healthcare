# Common code to run before knitting each chapter.
library(knitr)
library(tm)
library(ggplot2)
library(Matrix)
library(readr)

data = read_csv(url("https://ucdavisdatalab.github.io/workshop-nlp-healthcare/abstracts.csv"))
tfidf_dtm = readRDS("./data/tfidf_dtm.rds")

get_corpus <- function(data, remove=c("")) {
  newcorpus = Corpus(VectorSource(data$text))
  newcorpus = tm_map(newcorpus, removePunctuation, ucp=TRUE)
  newcorpus = tm_map(newcorpus, removeNumbers)
  newcorpus = tm_map(newcorpus, tolower)
  newcorpus = tm_map(newcorpus, removeWords, stopwords("en")) # may need snowballC package
  newcorpus = tm_map(newcorpus, removeWords, remove)
  
  dtm = DocumentTermMatrix(newcorpus)
  tfidf = weightTfIdf(dtm, normalize=TRUE)
  articles <- t(tfidf)
  
  prcomp(articles, center=TRUE, scale=TRUE)
}

top_terms <- function(tfidf, n=4) {
  sparse_terms <- new("dgTMatrix", i=as.integer(tfidf$i-1), j=as.integer(tfidf$j-1), x=tfidf$v, Dim=c(tfidf$nrow, tfidf$ncol))
  apply(sparse_terms, 1, function(row) paste(tfidf$dimnames$Terms[order(row, decreasing=TRUE)[1:n]], collapse=" "))
}
