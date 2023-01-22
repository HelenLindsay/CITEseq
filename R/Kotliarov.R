#' Obtain the Kotliarov_PBMC data
#'
#' Obtain the PMBC CITE-seq data from Kotliarov \emph{et al.} (2020).
#'
#'@details
#'CITE-seq of PBMCs from 10 high and 10 low responders to influenza vaccination,
#'prepared in two batches
#'
#'Samples were demultiplexed using a combination of hashtags and SNPs.
#'Demultiplexing information from the original study is included in the colData.
#'
#'CD206 is present in the data but missing from the clone table.
#'
#'@references
#'\doi{}
#'@export
Kotliarov_PBMC <- function(multiplex = c("all", "singlets")){

    # Options: return just the singlets

}
