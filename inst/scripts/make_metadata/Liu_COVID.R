# Sequencing was performed in 3 batches, the files on GEO are separated by batch

# Patient metadata is in individual metadata tables

library(tidyverse)

patient_dat <- do.call(bind_rows,
                       lapply(liu, function(x) as_tibble(metadata(x))))

patient_dat <-
