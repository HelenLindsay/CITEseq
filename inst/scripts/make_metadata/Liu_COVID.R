


# Sequencing was performed in 3 batches, the files on GEO are separated by batch

# Patient metadata is in individual metadata tables

library(tidyverse)

patient_dat <- do.call(bind_rows,
                       lapply(liu, function(x) as_tibble(metadata(x))))



# This is the extra metadata file already downloaded

timepoint_meta_f <- paste(c("https://ftp.ncbi.nlm.nih.gov/geo/series/",
                            "GSE161nnn/GSE161918/suppl/GSE161918_allbatches.",
                            "HTOandTimepointMetadata.csv.gz"), collapse = "")
liu_timepoint <- "inst/metadata/Liu_timepoints.csv.gz"

if (! file.exists(liu_timepoint)){
    download.file(timepoint_meta_f, destfile = liu_timepoint)
}

liu_timepoint <- readr::read_delim(liu_timepoint) %>%
    dplyr::mutate(across(Age, Status) = ~na_if(.x, "na"))

# Metadata from Github repo - more patient information
github_meta_f <- file.path("https://github.com/niaid/covid19-time-resolved/",
                         "raw/main/A3/input.data/covid19.metadata.paper1.RData")

github_tmp <- file.path(tempdir(), "liu_github.RData")

download.file(github_meta_f, destfile = github_tmp)
load(github_tmp)
