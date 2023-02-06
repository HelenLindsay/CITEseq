#' Obtain the Arunachalam_COVID data
#'
#' Obtain the single cell COVID-19 PBMC CITE-seq data from Arunachalam et al.
#' (2020).
#'
#' @details
#'CITE-seq of 7 COVID-19 patients and 5 age-matched healthy controls.
#'Peripheral blood mononuclear cells (PBMCs) were enriched for dendritic
#'cells using bead enrichment. Enriched cells were mixed with PBMCs at
#'a 1:2 ratio.  The antibody panel includes 4 isotype controls.
#'
#'The experiment was performed in two batches. No major batch effects were
#'detected via a UMAP plot in the original study.
#'
#'Cell ranger was used for demultiplexing and counting.  Original cell
#'annotations are present as colData.
#'
#'Bulk RNA-seq data for a large number of COVID patients is also available but
#'not included here.
#'
#'Data was downloaded from
#'\url{https://fh-pi-gottardo-r-eco-public.s3.amazonaws.com/SingleCellDatasets/}
#'
#'@references
#'Arunachalam, Prabhu S., et al. "Systems biological assessment'
#'of immunity to mild versus severe COVID-19 infection in
#'humans." Science 369.6508 (2020): 1210-1220.
#'\doi{10.1126/science.abc6261}
#'
#'@export
Arunachalam_COVID <- function(samples = c("all", "healthy", "COVID-19")){

    # load experiment

    samples <- match.arg(samples)
    if (! samples == "all"){
        if (samples == "healthy"){
            # Subset where disease_status == "Healthy"

        } else if (samples == "COVID-19"){
            # Subset where disease_status == "COVID-19"
        }
    }
}
