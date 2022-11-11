library("janitor")
library("readxl")
library("tidyverse")

data_name <- "fernandez_artherosclerosis"

patient_url <- paste0("https://static-content.springer.com/esm/",
                      "art%3A10.1038%2Fs41591-019-0590-4/MediaObjects/",
                      "41591_2019_590_MOESM3_ESM.xlsx")

patient_fname <- file.path(tempdir(), "fernandez_patient.xlxs")
download.file(patient_url, destfile = patient_fname)

fernandez_md <- readxl::read_excel(patient_fname, skip = 1)
