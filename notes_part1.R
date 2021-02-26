# Live coding nodes for workshop Friday February 12
# Arthur Koehl
# '=' == '<-'



# Packages
# ========
# c('tm', 'ggplot2', 'Matrix')

# install
install.packages("tm")
install.packages("ggplot2")
install.packages("Matrix")
install.packages("readr")

# load
library(tm)
library(ggplot2)
library(Matrix)
library(readr)

# documentation


# Data for Workshop
# =================
# url = "https://ucdavisdatalab.github.io/workshop-nlp-healthcare/abstracts.csv"

# load
data = read_csv(url("https://ucdavisdatalab.github.io/workshop-nlp-healthcare/abstracts.csv"), stringsAsFactors=FALSE, encoding="utf-8")
# inspect
str(data)

# Whats interesting about text data? potential problems?
t = data$text[1]

# Preprocessing
# =============

# How can we 'fix' those problems in R (after loading in the data)?

# corpus object
corpus = Corpus(VectorSource(data$text))
inspect(head(corpus))

# lower
corpus = tm_map(corpus, tolower)
# punctuation
corpus = tm_map(corpus, removePunctuation, ucp=TRUE)
# numbers
corpus = tm_map(corpus, removeNumbers)
# stopwords
corpus = tm_map(corpus, removeWords, stopwords("en"))
corpus[[1]]$content

# Bag of Words
# ============

# create
dtm = DocumentTermMatrix(corpus)
dtm
# inspect
inspect(dtm)
# Sparse Matrices

# document lengths; word counts;
dtm.mat = as.matrix(dtm)
document_lengths = rowSums(dtm.mat)
document_lengths
head(sort(document_lengths, decreasing=TRUE), n=10)
# most common words
word_counts = colSums(dtm.mat)
sorted = sort(word_counts, decreasing=TRUE)
head(sorted)

# Term Frequency Inverse Document Frequency
# ========================================
# TF-IDF formula:
# tfidft(t,d,D) = tf(t,d) * idf(t,D)

# weighted dtm
tfidf_dtm = weightTfIdf(dtm, normalize=TRUE)
# inspect
inspect(tfidf_dtm)
# compare most important terms for a given abstract
tf = dtm.mat[10,]
most_important_tf = head(sort(tf, decreasing=TRUE), n = 10)

tfidf_dtm.mat = as.matrix(tfidf_dtm)
tfidf = tfidf_dtm.mat[10,]
most_important_tfidf = head(sort(tfidf, decreasing=TRUE), n=10)
most_important_tfidf
