## ----plot-tfidf---------------------------------------------------------------------------------------------------------
# first, convert the TF-IDF to a dense matrix


# identify the first term and plot its histogram


# identify the second term and plot its histgram


# plot the first two columns 


## ----pca-calc-----------------------------------------------------------------------------------------------------------
# rotate the TF-IDF so the columns are articles


# calculate PCA on the rotated TF-IDF


# extract the matrix of rotations



## -----------------------------------------------------------------------------------------------------------------------
# plot the first two principal components



## -----------------------------------------------------------------------------------------------------------------------
# identify the order of documents along the first principal component


# view the titles at the extremes of the first principal component


## ----second-pc----------------------------------------------------------------------------------------------------------
# identify the order of documents along the second principal component


# observe which papers are at the extremes of the second PC



## ----third-pc-----------------------------------------------------------------------------------------------------------
# identify the order of documents along the third principal component


# observe which papers are at the extremes of the second PC



## -----------------------------------------------------------------------------------------------------------------------
# source the function for identifying top terms in documents from github


# cbind data and the PCA rotation


# identify top terms for each document and attach them to the plotdata


# visualize the top principal components in terms of top terms



## plot the explained variance-----------------------------------------------------------------------------------------------------------------------


