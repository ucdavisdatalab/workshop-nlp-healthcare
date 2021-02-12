bookdown::render_book("index.Rmd")

# copy files over to docs

datafiles = list.files("./data/", full.names=TRUE)
file.copy(datafiles, "./docs/")

# source code
sourcefiles = c("get_corpus.R", "top_terms.R", "notes_part1.R")
file.copy(sourcefiles, "./docs/")
