# install packages for workshop
install.packages("tm")
install.packages("ggplot2")
install.packages("Matrix")

# load the packages into the R session
library("tm")
library("ggplot2")
library("Matrix")

?DocumentTermMatrix

# read in the data
data <- read.csv(url("https://ucdavisdatalab.github.io/workshop-nlp-healthcare/abstracts.csv"))
str(data)

data$text[[1]]

# preprocessing
mycorpus <- Corpus(VectorSource(data$text))
inspect(head(mycorpus))

# lowercase
mycorpus <- tm_map(mycorpus, tolower)
mycorpus[[1]]$content
# punctuation
mycorpus <- tm_map(mycorpus, removePunctuation, ucp=TRUE)
# digits
mycorpus <- tm_map(mycorpus, removeNumbers)
# removing stop words
mycorpus <- tm_map(mycorpus, removeWords, stopwords("en"))

mycorpus[[1]]$content

# bag of words
mydtm <- DocumentTermMatrix(mycorpus)
inspect(mydtm)

# word counts and doucment lengths from dtm
document_lengths <- rowSums(as.matrix(mydtm))
word_counts <- colSums(as.matrix(mydtm))

# plot the ten most common words
sorted_word_counts <- sort(word_counts, decreasing=TRUE)
sorted_word_counts[1:10]

# TF-IDF representation
tfidf_dtm <- weightTfIdf(mydtm, normalize=TRUE)
inspect(tfidf_dtm)

# PCA
plot(as.matrix(tfidf_dtm[, 1:2]))

articles <- t(tfidf_dtm)
mypca <- prcomp(articles, center=TRUE, scale=TRUE)

plotdata <- cbind(data, mypca$rotation)

#plot the first two principal components
ggplot(plotdata) + aes(x=PC1, y=PC2) + geom_point()

min_index <- order(plotdata$PC1, decreasing=FALSE)
max_index <- order(plotdata$PC1, decreasing=TRUE)

# what are the titles along the extremes of the first principal component?
plotdata$title[min_index[1:6]]
plotdata$title[max_index[1:6]]

source(url("https://ucdavisdatalab.github.io/workshop-nlp-healthcare/top_terms.R"))
plotdata$top_terms <- top_terms(tfidf_dtm)

#plot the top terms:
ggplot(plotdata) + aes(x=PC2, y=PC3, label=top_terms) +
  geom_text(check_overlap=TRUE)


plot(100* cumsum(mypca$sdev^2) / sum(mypca$sdev^2), ylab="% total variance explained", xlab="PC number", type='l')
