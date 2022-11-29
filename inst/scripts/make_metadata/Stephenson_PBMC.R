# BERNAT
# load stephenson, get colData, store in variable col_dat

library("tidyverse")
library("janitor")
library("readxl")

# Drop constant columns
col_dat <- col_dat %>%
    janitor::remove_constant()

sample_cn <- c("sample_id", "patient_id", "sex", "disease",
               "Collection_Day", "Swab_result", "Status", "Smoker",
               "Status_on_day_collection", "Status_on_day_collection_summary",
               "Days_from_onset", "Site", "time_after_LPS",
               "Worst_Clinical_Status", "Outcome",
               "development_stage_ontology_term_id", "disease_ontology_term_id",
               "sex_ontology_term_id")

sample_metadata <- col_dat %>%
    as_tibble() %>%
    dplyr::select(all_of(sample_cn)) %>%
    unique() %>%
    dplyr::mutate(time_after_LPS = na_if(time_after_LPS, "nan"))

# Columns sample_id and patient_id are identical except where sample_id
# starts with BGCV, e.g. sample_id BGCV01_CV0904 patient_id CV0904
col_data_cn <- c("sample_id", setdiff(colnames(col_dat), sample_cn))
col_dat <- col_dat %>%
    as_tibble() %>%
    dplyr::select(all_of(col_data_cn))

# Additional patient metadata from Supplementary Table 2

supp_t_web <- paste0("https://static-content.springer.com/esm/",
                     "art%3A10.1038%2Fs41591-021-01329-2/MediaObjects/",
                     "41591_2021_1329_MOESM3_ESM.xlsx")

stephenson_fname <- "inst/metadata/Stephenson_PBMC_supp_tables.xlsx"
download.file(supp_t_web, destfile = stephenson_fname)

supp_t_2 <- readxl::read_xlsx(stephenson_fname, sheet = 2, skip = 1)

# Harmonise supplementary table with existing colData

supp_t_patch <- tibble::tribble()

supp_t_2 <- supp_t_2 %>%
    dplyr::rename(sample_id = `Sample ID`,
                  patient_id = `Patient ID`,
                  Swab_result = `Swab result`,
                  Collection_Day = `Collection day`,
                  Status_on_day_collection = `Status on collection day`) %>%
    dplyr::mutate(Outcome = ifelse(Outcome == "Not_known", "unknown", Outcome),
                  Outcome = gsub("\r.*", "", Outcome))

# There are two differences in sample IDs between the colData and the supp table
# In supplementary: "BGCV06_CV0326" "BGCV13_CV0201"
# In colData: "BGCV06_CV0201" "BGCV13_CV0326"


# These cell types are in the data but not the supp table
c("C1_CD16_mono", "HSC_CD38pos", "HSC_erythroid", "HSC_prolif",
  "HSC_CD38neg", "HSC_myeloid", "HSC_MK")

# BERNAT - WHERE DOES THE COL_DATA COME FROM?
