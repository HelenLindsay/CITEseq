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

# singlet by hto and demux
cell_annots %>% dplyr::filter(HTO_Classification != "Multiplet",
                      Demuxlet_Classification == "SNG") %>%
    dplyr::select(HTO_Classification,
                  Demuxlet_Classification,
                  Donor_of_Origin) %>%
    dplyr::summarise(n = n())

col_data <- data.frame(Individual = gsub("-Sample", "", Run_Identifier),
                       )
