library("readr")
library("dplyr")

code_repo <- "https://github.com/effiken/Leader_et_al/blob/master/"
cell_meta_f <- file.path(code_repo, "input_tables/cell_metadata.csv?raw=true")
cluster_annots_f <- file.path(code_repo,
                              "input_tables/annots_list.csv?raw=true")
table_s1_f <- file.path(code_repo,
                        "/input_tables/table_s1_sample_table.csv?raw=true")

cell_meta <- read_delim(cell_meta_f)
cluster_annots <- read_delim(cluster_annots_f)


# The raw data contain counts for all barcodes, allowing
# cell calling /re-demultiplexing

##### THIS PART ASSUMES WE HAVE THE ASSAY FILENAMES

# Select demultiplexed singlets from sce objects

sces <- lapply(fnames, function(x){
    sce <- loadHDF5SummarizedExperiment(dirname(x))
})
names(sces) <- fnames

# Batch to sample IDs is in Supp Table 1, but more conveniently on Github
table_s1 <- read_delim(table_s1_f)
patient_batch_sample <- table_s1[, c("sample_ID", "patient_ID", "amp_batch_ID")]

# Get the amplification batch from the filenames, then
# get the samples included in the files that we have
fname_to_batch <- data.frame(fname = fnames,
                             amp_batch_ID =
    as.numeric(gsub(".*batch_ID_([0-9]+)-[0-9]+_patient.*", "\\1", fnames))) %>%
    dplyr::left_join(patient_batch_sample)

# Select singlet, demultiplexed cells from each filename

singlets <- lapply(names(sces), function(nm){
    sce <- sces[[nm]]
    sample_ids <- fname_to_batch %>%
        dplyr::filter(fname == nm) %>%
        dplyr::pull(sample_ID)
    keep_cell_t <- cell_meta %>%
        dplyr::filter(sample_ID %in% sample_ids)
    # In cell_meta table, the sample_ID is prepended to the barcode
    keep_cells <- gsub("^[0-9]+_", "", keep_cell_t$cell_ID)
    all(keep_cells %in% colnames(sce))
    sce <- sce[, keep_cells]
    # Make the names match the cell metadata
    colnames(sce) <- keep_cell_t$cell_ID
    sce
})

# Bind the sces back into a single matrix, split by tissue and disease?

######
# NOTE: e.g.
# GSE154826_batch_ID_350-350_patient_706-7002N5_matrix/assays.h5
# has no cells in cell_meta

# batches 350, 351, 49, 50, 94, 95 - 94, 95 were resampled

# IDxs with no cells in cell meta check_idx <- c(8, 9, 11, 12, 25, 26)

