top_terms <- function(tfidf, n=4) {
  sparse_terms <- new("dgTMatrix", i=as.integer(tfidf$i-1), j=as.integer(tfidf$j-1), x=tfidf$v, Dim=c(tfidf$nrow, tfidf$ncol))
  apply(sparse_terms, 1, function(row) paste(tfidf$dimnames$Terms[order(row, decreasing=TRUE)[1:n]], collapse=" "))
}
