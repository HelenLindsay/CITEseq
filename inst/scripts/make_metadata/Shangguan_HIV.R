library("tidyverse")

sample_meta_web <- "https://figshare.com/ndownloader/files/27926418"
sample_meta_local <- "inst/metadata/Shangguan_HIV_sample_metadata.txt"

download.file(sample_meta_web, destfile = sample_meta_local)

# Rename sample metadata to match colData
sample_metadata <- readr::read_delim(sample_meta_local) %>%
    dplyr::rename(sample = PID)

# Get tsne coordinates from original study
tsne_web <- "https://figshare.com/ndownloader/files/27926424"
tsne_local <- "inst/metadata/Shangguan_HIV_sample_metadata.txt"
download.file(tsne_web, destfile = tsne_local)

tsne <- readr::read_rds(tsne_local)

#identical(colnames(shangguan), rownames(tsne))
