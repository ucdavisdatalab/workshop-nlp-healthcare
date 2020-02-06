# NLP Workshop February 10th 2020

## Presentation of the data

For this workshop, we are looking at a set of abstracts of medical journal articles related to breast cancer.
We have X abstracts, stored in a csv, with duplicates. 
We would like to get the key words from each abstract, as well as visualize / check for groupings of abstracts in two dimensions.

## The tm package

###### a. install + load the 'tm' and 'readr' packages.
```
install.packages(c('tm', 'readr'))
library('tm')
library('readr')
```
###### b. how to use a package
    reading the online documentation
    following the vignette
    browsing the documention in R (and R studio's pane for doing it)
   
## The Document Term Matrix (DTM)

Consider: what is a text document to a computer?  
What can it do with a sequence of characters?  
What we need is a representation of the document that captures something we want to study, and is easy for the computer to process.  
One such representation is the Bag of Words format.   
In R we can use a Document Term Matrix.  


In a Document Term Matrix:
  - each document is represented by a set of tokens and their counts  
  - the order of tokens is not encoded in this representation  
  - the basis of many text processing methods, including document classification and topic modeling  

###### a.  Create a 'Corpus' object using the 'tm' package
The first step is to load the text data into a 'corpus' object.
```
data <- read_csv("data/abstracts-datafied.csv", col_names=TRUE)
mycorpus = Corpus(VectorSource(data$text))
```

###### b.  Preprocess the corpus object
COMMENT: THIS CAN BE DONE IN THE DTM, THIS MAY BE EASIER TO FOLLOW IN THE WORKSHOP IF WE LIMIT THE AMOUNT OF TIME SPENT ON THE CORPUS
Use the tm_map function to apply a transformation on each element of the corpus object.  
Alternatively use the tm_parLapply function to do the same in parallel.
```
mycorpus = tm_map(mycorpus, removePunctuation)
mycorpus = tm_map(mycorpus, removeNumbers)
mycorpus = tm_map(mycorpus, tolower)
mycorpus = tm_map(mycorpus, removeWords, stopwords("en")) # may need snowballC package
```
###### c. Creating a Document Term Matrix from the corpus object    
From the 'corpus' object we can create a document term matrix.
```
mydtm = DocumentTermMatrix(mycorpus)
mydtm # why is this weird?
```
Note: the DocumentTermMatrix automatically sets all the characters to lower case.

###### d. Exploring with a DTM  
DocumentTermMatrices are stored as Simple Triplet Matrices.  
Simple Triplet Matrices are a way of storing sparse matrices.  
Be aware of this when probing the object.  
```
class(mydtm)
str(mydtm)
```

A useful tool is the inspect function from the 'tm' package.
```
inspect(mydtm)
```

Use the 'slam' package to perform common operations on the DTM in simple triplet matrix form
```
myrowsums = rowSums(mydtm)
mycolsums = colSums(mydtm)
myrowmeans = rowMeans(mydtm)
mycolmeans = colMeans(mydtm)
```

Alternatively, for small dtms, we can convert to a non sparse matrix format.  
This may be easier to work with.
```
   mydtm = as.matrix(mydtm)
```

Examples:  
We want to get rid of all the empty documents from the document term matrix.
```
mydtm = mydtm[rowSums(mydtm) > 0]
```
Get rid of duplicates
```
mydtm = unique(mydtm)
```
Sort the documents by number of tokens
```
doccounts = order(colSums(mydtm), decreasing=TRUE)
```
Similarly find the most common words
```
wordfreqs = order(rowSums(mydtm), decreasing=TRUE)
``` 
## TF-IDF

Create tf-idf weighted DTM
```
   tfidf_dtm = weightTfIdf(mydtm, normalize=TRUE) #discuss normalize
```

Inspect the new dtm
```
   inspect(tfidf_dtm)
```

Look at results for a single document
```
   doc10 = as.matrix(mydtm[, 10])
```

sort the results
```
   doc10_sorted = doc10[sort.list(-doc10[,1]), decreasing=TRUE]
   doc10_sorted[1:10] 
```

## PCA

## Further resources!
