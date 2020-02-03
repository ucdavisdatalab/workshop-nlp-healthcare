NLP Workshop
===

Presentation of the data
==

For this workshop, we are looking at a set of abstracts of medical journal articles related to breast cancer.
We have X abstracts, stored in a csv, with duplicates. 
We would like to get the key words from each abstract, as well as visualize / check for groupings of abstracts in two dimensions.

The tm package
==

a. install + load the 'tm' package
```
    install.packages('tm')
    library('tm')
```
b. how to use a package
    reading the online documentation
    following the vignette
    browsing the documention in R (and R studio's pane for doing it)
   
The Document Term Matrix (DTM)
==

Consider: what is a text document to a computer?
What can it do with a sequence of characters?
What we need is a representation of the document that captures something we want to study, and is easy for the computer to process.
One such representation is the Bag of Words format. 
In R we can use a Document Term Matrix.
In a Document Term Matrix,
    - each document is represented by a set of tokens and their counts
    - the order of tokens is not encoded in this representation
    - the basis of many text processing methods, including document classification and topic modeling

a.  Create a 'Corpus' object using the 'tm' package
The first step is to load the text data into a 'corpus' object.
```
    mycorpus = Corpus(VectorSource(data$text))
```

optional:
b.  Preprocess the corpus object
Use the tm_map function to apply a transformation on each element of the corpus object.
Alternatively use the tm_parLapply function to do the same in parallel.
```
    corpus = tm_map(corpus, removePunctuation)
    corpus = tm_map(corpus, removeNumbers)
    corpus = tm_map(corpus, tolower)
    corpus = tm_map(corpus, removeWords, stopwords("en")) # may need snowballC package
```
c. Creating a Document Term Matrix from the corpus object    
From the 'corpus' object we can create a document term matrix.
```
    mydtm = DocumentTermMatrix(mycorpus)
    mydtm # why is this weird?
```
Note: the DocumentTermMatrix automatically sets all the characters to lower case.

d. Sparsity in Document Term Matrices

e. Exploring with a DTM

    

TF-IDF
== 

PCA
==

Further resources!
==
