get_corpus <- fubnction(data, remove=c("")) {
  newcorpus = Corpus(VectorSource(data2$text))
  newcorpus = tm_map(newcorpus, removePunctuation, ucp=TRUE)
  newcorpus = tm_map(newcorpus, removeNumbers)
  newcorpus = tm_map(newcorpus, tolower)
  newcorpus = tm_map(newcorpus, removeWords, stopwords("en")) # may need snowballC package
  newcorpus = tm_map(newcorpus, removeWords, remove) # may need snowballC package
}