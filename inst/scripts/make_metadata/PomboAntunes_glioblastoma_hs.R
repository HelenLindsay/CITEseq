library("janitor")
library("readxl")
library("tidyverse")

data_name <- "PomboAntunes_glioblastoma_hs"

patient_url <- paste0(
    "https://static-content.springer.com/esm/art%3A10.1038%2Fs41593-020-00789-y",
    "/MediaObjects/41593_2020_789_MOESM3_ESM.xlsx")

patient_fname <- file.path(tempdir(), "pomboantunes_patient.xlxs")
download.file(patient_url, destfile = patient_fname)

pombo_md <- readxl::read_excel(patient_fname, skip = 1) %>%
    janitor::clean_names() %>%
    # Make "sample" match the data names
    tidyr::separate(sample_number, into = c("sample", "notes"),
                    sep = " (?=\\()", fill = "right") %>%
    # Fill in patient information for R2
    dplyr::group_by(sample) %>%
    tidyr::fill(everything()) %>%
    # Select CITE-seq samples
    dplyr::filter(cite_seq == "yes") %>%
    # Remove uninformative columns
    dplyr::select(-cite_seq, -cd45_enrichment_prior_to_10x_loading,
     -corticosteroids_before_surgery_total_equivalents_methylprednisolone_mg)


# TESTS: number_cd45_cells_after_filtering = number of cells?
