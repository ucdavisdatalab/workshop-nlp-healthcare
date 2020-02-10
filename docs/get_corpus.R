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