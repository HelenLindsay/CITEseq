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


# Hand-coded from Supplementary Table 1, has additional information not in ex_md
# Patient information is from Supplementary Table 1

tibble::tribble(~Group, ~Genetic_mutations, ~Age, ~Gender, ~BMI,
                ~Severity_score, ~Disease_duration_years,
                "Control", NA, 55, "M", 22.9, NA, NA,
                "Control", NA, 35, "F", 33.3, NA, NA,
                "Control", NA, 43, "F", 22, NA, NA,
                "Herediary", "PRSS1", 21, "M", 23.1, 9, 17,
                "Herediary", "PRSS1", 9, "F", 20.3, 8, 7,
                "Herediary", "PRSS1, CFTR, SPINK1", 15, "M", 21.3, 10, 2,
                "Herediary", "PRSS1", 13, "M", 18.2, 9, 10,
                "Herediary", "PRSS1, CFTR", 16, "F", 22, 9, 7,
                "Idiopathic", NA, 47, "F", 19.1, 1, 4,
                "Idiopathic", NA, 42, "F", 27.3, 9, 3,
                "Idiopathic", NA, 31, "F", 28.8, 6, 3,
                "Idiopathic", NA, 42, "F", 28.7, 5, 17)

