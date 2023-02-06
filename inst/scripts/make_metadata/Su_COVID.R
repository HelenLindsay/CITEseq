library(tidyverse)

# STARTING FROM SCE OBJECT

# Remap subject names to match the original clinical names
md <- metadata(sce)$sample_information %>%
    dplyr::select(Individual, disease, `Blood draw time point`) %>%
    dplyr::rename(time_point = `Blood draw time point`, patient = Individual) %>%
    dplyr::mutate(raw_patient = gsub("INCOV[0]*", "", patient))# %>%
    #dplyr::select(patient, raw_patient)

cd <- colData(sce) %>%
    as_tibble() %>%
    dplyr::mutate(raw_patient = as.character(patient)) %>%
    dplyr::select(-patient) %>%
    dplyr::full_join(md)

