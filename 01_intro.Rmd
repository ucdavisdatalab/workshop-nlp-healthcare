# Intro to NLP

There is *a lot* of health data that is unstructured text. 

* EMR
* Clinical notes
* Medical journal literature
* Surveys and questionnaires
* Interviews
* Community forums
* Social media

NLP allows us to use "distance reading" to unlock information from narrative text for extraction and classification:

* keyword detection
* topic detection
* document summarizing
* document classification
* document clustering
* document similarity
* speech recognition
* text translation

*Natural Language Processing* (NLP) = linguistics + computer science + information engineering + data science. We use NLP to computationally parse and analyze large amounts of natural language data.

NLP takes **text to numbers and numbers to machines.**

### What's a Natural Language?

"...any language that has evolved naturally in humans through use and repetition without conscious planning or premeditation. Natural languages can take different forms, such as speech or signing. They are distinguished from constructed and formal languages such as those used to program computers or to study logic." [Thanks, Wikipedia.](https://en.wikipedia.org/wiki/Natural_language)

**Thought questions:** Are clinical notes a natural language? What about tweets?

### History of NLP

1950s - Alan Turing's article on "Computing Machinery and Intelligence"
1954 - Georgetown Experiment to automatically translate 60 Russian sentences to English
1960s - Restricted vocabularies
1970s - Conceptual ontologies and chatterbots
1980s - First statistical machine translation systems developed (IBM, Watson)
2010s - Extensions of classical NLP and emergence of deep neural networks

In this workshop we're focusing on classical NLP (feature engineering). 

### Caveats before we get started

**Garbage in, garbage out.** Know your corpus.
**All models are wrong, but some are useful.** And others are dangerous.

*Natural langauge data can not be deidentified.*

NLP models are powerful, but can fail when applied to jargon-heavy, niched domains. Augmenting with developed medical dictionaries helps, but parts of speech taggers, for example, are not designed for the health space. This is especially true for classical NLP techniques, although deep learning approaches hold strong promise for working with unstructured health data.

### Text processing
    - *word frequency*:
    - *TF-IDF*:
    - *PCA*:
    - word dispersion:
    - KWIC: Key Word in Context
    - co-occurence:
    - stemming:
    - bigrams: conditional probability of a token given the preceding token.
    - named entity recognition (NER): identifying which items in the text map to proper names (people, places, location).
    - regular expressions (RegEx): searching for exact words, parts of words or phrases
    - feature extraction:
    - document clustering (e.g kmeans)
    - parsing: grammatical analysis of a sentence and relationships between words.
    - feature based linear classifiers:
    - topic modeling:
    - word embedding: mapping words or phrases to vectors of real numbers allowing words with similar meaning to have a similar representation.
    - sentiment analysis: subjective information to determine "polarity" of a document. (e.g., positive or negative reviews)
    - lemmatization - removing inflectional endings to return the base dictionary form of a word (lemma).
    - part of speech tagging: determining the parts of speech for each word in a sentence.
    - dependency parsing:
    - OCR: optical character recognition, determining the text from an image of the text.

### Where to go to learn more

* [DataLab's NLP Researcher Toolkit](http://datalab.ucdavis.edu/research-toolkit/)
* [Curated list of ML and NLP resources for healthcare](https://github.com/isaacmg/healthcare_ml)
* [Post on how NLP can help clinicians](https://tdan.com/natural-language-processing-in-healthcare/24538)
* [Machine Learning for Healthcare August 2020 Conference at Duke](https://www.mlforhc.org/)
* NLP Healthcare Conference

## Demo introduction

Dr. Sonja Diertrich is a radiation oncologist at UCDMC studying early stage breast cancer. For this coding demo we are using NLP to explore the recent literature on this topic with her lab. 

### About the data

Working with  Blaisdell Medical Library's health librarian Amy Studer, we conducted a pilot systematic search in EMBASE and PubMed on this topic for articles published in the International Journal of Radiation Oncology Biology Physics, Practical Radiation Oncology, and Lancet over the past 5 years. For this demo we are using the titles and abstracts from that search. (See the readME for more information regarding the search strategy used to generate our datatset.) 

### Why R? What is RStudio?

["R"](https://www.r-project.org/) is a programming language and statistical software that interprets scripts. [RStudio](https://rstudio.com/) is an Integrated Development Environment (IDE) for working with R. You need R installed in order to use RStudio, but you don't need RStudio to work with R.

*So why R?*
* Faciliates reproducible research workflows
    - integrates with other tools. 
    - designed for data analysis
    - produces high-quality graphics
* It's extensible and interdisciplinary
    - free, open-source, well-documented, and cross-platform
    - runs on Mac, PC and Linux. 
    - works with data of all shapes and sizes.
    - large library of external packages available for performing diverse tasks, including text mining and NLP.
* Large (and growing) community
 
*Should you use R?* Maybe. Use whatever langauge allows you to perform your work and faciliates sharing with your direct colleagues and the broader reserach community. 


### Further resources 

Useful packages:

- ntlk (python)  
- spaCy (python)  
- quanteda (R)  
- tidytext (R)  

Classes:

- [Dan Jurafsky and Christopher Manning NLP youtube series](https://www.youtube.com/playlist?list=PLoROMvodv4rOFZnDyrlW3-nI7tMLtmiJZ&disable_polymer=true)  

Datasets:

- [https://github.com/niderhoff/nlp-datasets](https://github.com/niderhoff/nlp-datasets)  
- [https://archive.ics.uci.edu/ml/datasets.php?format=&task=&att=&area=&numAtt=&numIns=&type=text&sort=nameUp&view=table](https://archive.ics.uci.edu/ml/datasets.php?format=&task=&att=&area=&numAtt=&numIns=&type=text&sort=nameUp&view=table)  
