# Cell annotation data is available from
# https://data.humancellatlas.org/explore/projects/efea6426-510a-4b60-9a19-277e52bfa815
# Data was downloaded by generating a temporary curl ID.

# All of the cells with a non-NA value in the Celltype_Annotation column
# have Demuxlet_Classification == "SNG", and conversely all cells with
# Demuxlet_Classification == "SNG" have a non-NA Celltype_Annotation

library("tidyverse")

cell_annots <- file.path("inst/metadata",
                         "Lawlor_PBMC_CZI.PBMC.cell.annotations.csv")
cell_annots <- readr::read_delim(cell_annots)

# Identify singlets by HTO and Demuxlet result
cell_annots <- cell_annots %>%
    dplyr::mutate(Singlet =
                      ifelse(Demuxlet_Classification == "SNG" &
                            ! HTO_Classification %in% c("Multiplet", "Empty"),
                              TRUE, FALSE),
                  # Remove "-Sample" from Run_Identifier, make a factor
                  Run_Identifier =
                      as.factor(gsub("-Sample", "", Run_Identifier)))

lawlor_coldata <- DataFrame(cell_annots[, 2:ncol(cell_annots)],
                            rownames = cell_annots[,1])
