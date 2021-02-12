# Live coding nodes for workshop Friday February 12
# Arthur Koehl
# '=' == '<-'

# Packages
# ========
# c('tm', 'ggplot2', 'Matrix')

# install

# load

# documentation


# Data for Workshop
# =================
# url = "https://ucdavisdatalab.github.io/workshop-nlp-healthcare/abstracts.csv"

# load

# inspect

# Whats interesting about text data? potential problems?


# Preprocessing
# =============

# How can we 'fix' those problems in R (after loading in the data)?

# corpus object

# lower

# punctuation

# numbers

# stopwords


# Bag of Words
# ============

# create

# inspect

# Sparse Matrices

# document lengths; word counts;

# most common words

# Term Frequency Inverse Document Frequency
# ========================================
# TF-IDF formula:
# tfidft(t,d,D) = tf(t,d) * idf(t,D)

# weighted dtm

# inspect

# compare most important terms for a given abstract
