bookdown::render_book("index.Rmd")

# copy files over to docs
datafiles = list.files("./data/", full.names=TRUE)
file.copy(datafiles, "./docs/")
