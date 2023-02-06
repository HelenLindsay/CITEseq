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
#'Data were downloaded from
#'\url{https://nih.figshare.com/collections/Data_and_software_code_repository_for_Broad_immune_activation_underlies_shared_set_point_signatures_for_vaccine_responsiveness_in_healthy_individuals_and_disease_activity_in_patients_with_lupus_Kotliarov_Y_Sparks_R_et_al_Nat_Med_DOI_https_d/4753772}
#'
#'@references
#'\doi{}
#'@export
Kotliarov_PBMC <- function(multiplex = c("all", "singlets")){

    # Options: return just the singlets

}
