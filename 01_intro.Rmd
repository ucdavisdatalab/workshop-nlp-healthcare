# Intro to Text Processing and NLP for Health Data 

There is *a lot* of health data that is unstructured text. 

* EMR Clinical notes
* Medical journal literature
* Surveys and questionnaires
* Interviews
* Community forums
* Social media

The goal is to take text data -> convert it into data that can be analyzed (numbers) -> run some analysis -> interpret the analysis.

## General Methods for Analyzing Text

-  *word frequency*
-  *TF-IDF*
-  *PCA*
-  tokenization
-  KWIC: Key Word in Context
-  co-occurence
-  stemming
-  lemmatization - removing inflectional endings to return the base dictionary form of a word (lemma).
-  bigrams: conditional probability of a token given the preceding token.
-  named entity recognition (NER): identifying which items in the text map to proper names (people, places, location).
-  regular expressions (RegEx): searching for exact words, parts of words or phrases
-  feature based linear classifiers
-  topic modeling
-  word embedding: mapping words or phrases to vectors of real numbers allowing words with similar meaning to have a similar representation.
-  sentiment analysis: subjective information to determine "polarity" of a document. (e.g., positive or negative reviews)
-  part of speech tagging: determining the parts of speech for each word in a sentence.

## NLP

NLP allows us to use "distance reading" to unlock information from narrative text for extraction and classification:

-  keyword detection
-  topic detection
-  document summarizing
-  document classification
-  document clustering
-  document similarity
-  speech recognition
-  text translation

*Natural Language Processing* (NLP) = linguistics + computer science + information engineering + data science. We use NLP to computationally parse and analyze large amounts of natural language data.

## What's a Natural Language?

"...any language that has evolved naturally in humans through use and repetition without conscious planning or premeditation. Natural languages can take different forms, such as speech or signing. They are distinguished from constructed and formal languages such as those used to program computers or to study logic." [Thanks, Wikipedia.](https://en.wikipedia.org/wiki/Natural_language)

**Thought questions:** Are clinical notes a natural language? What about tweets?

## NLP Trends

- 1950s - 1970s Using our understanding of language to develop rules that we feed into computer programs.
- 1980s - 2000s Classical NLP - Using statistical methods to analyze text corpora.
- 2010s - Further extension of statistical analysis of corpora and developments in deep learning. More and more data available, untagged. Need for unsupervised methods.

In this workshop we're focusing on classical NLP (no deep learning).

## Caveats before we get started

**Garbage in, garbage out.** Know your corpus.
**All models are wrong, but some are useful.** And others are dangerous.

*Natural langauge data can not be deidentified.*

NLP models are powerful, but can fail when applied to jargon-heavy, niched domains. Augmenting with developed medical dictionaries helps, but parts of speech taggers, for example, are not designed for the health space. This is especially true for classical NLP techniques, although deep learning approaches hold strong promise for working with unstructured health data.

## Further resources 

* [DataLab's NLP Researcher Toolkit](http://datalab.ucdavis.edu/research-toolkit/)
* [Curated list of ML and NLP resources for healthcare](https://github.com/isaacmg/healthcare_ml)
* [Post on how NLP can help clinicians](https://tdan.com/natural-language-processing-in-healthcare/24538)

Useful packages:

- ntlk (python)  
- spaCy (python)  
- quanteda (R)  
- tidytext (R)  

Classes:

- [Dan Jurafsky and Christopher Manning NLP youtube series](https://www.youtube.com/playlist?list=PLoROMvodv4rOFZnDyrlW3-nI7tMLtmiJZ&disable_polymer=true)  
- [CS 124 Slides on Text Processing](https://web.stanford.edu/class/cs124/lec/textprocessingboth.pdf)

Datasets:

- [https://github.com/niderhoff/nlp-datasets](https://github.com/niderhoff/nlp-datasets)  
- [https://archive.ics.uci.edu/ml/datasets.php?format=&task=&att=&area=&numAtt=&numIns=&type=text&sort=nameUp&view=table](https://archive.ics.uci.edu/ml/datasets.php?format=&task=&att=&area=&numAtt=&numIns=&type=text&sort=nameUp&view=table)  
