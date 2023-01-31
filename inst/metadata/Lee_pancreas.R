library("tidyverse")
library("S4Vectors")

###################
# Starting from the extra metadata
###################

ex_md <- ex_data[["Lee_2021"]]

ex_md <- ex_md %>%
    dplyr::filter(grepl("CITE", characteristics_ch1)) %>%
    dplyr::mutate(patient = gsub(",.*", "", characteristics_ch1)) %>%
    tidyr::separate(characteristics_ch1.3, sep = " age: ",
                    into = c("genetic_mutations", "age")) %>%
    dplyr::mutate(across(c(genetic_mutations,
                           `characteristics_ch1.1`,
                           `characteristics_ch1.2`), ~gsub(".*: ", "", .x))) %>%
    dplyr::rename(disease = characteristics_ch1.2,
                  gender = characteristics_ch1.1,
                  accession = title) %>%
    dplyr::select(accession, patient, disease,
                  age, genetic_mutations, gender) %>%
    dplyr::mutate(age = as.numeric(age),
                  genetic_mutations = na_if(genetic_mutations, "-"))


## Harmonise the colData to match the metadata

###### Starting from colData cd:

# Note that nFeature_RNA (and probably nCount_RNA) refer to PROTEIN not RNA

cd <- cd %>%
    as_tibble() %>%
    dplyr::mutate(SAMPLE_ID = gsub("GSE[0-9]+_(.*)-GSE.*", "\\1", FILE_ID)) %>%
    DataFrame()

