#' Obtain the Fernandez_artherosclerosis data
#'
#' Obtain the artherosclerosis CITE-seq data from Fernandez et al. (2019).
#'
#' @details
#' Fernandez \emph{et al} studied patients undergoing carotid endarterectomy.
#' This data set consists of T-cells and macrophages from CITE-seq of PBMC
#' and atherosclerotic plaque sample from one patient.
#' Samples were enriched for CD45+ cells.
#' Patients were either symptomatic (e.g. had a stroke) or asymptomatic.
#' Patients with cancer, autoimmune disease, renal failure, peripheral arterial
#' occlusive disease, or a current infection were not included in the study.
#'
#' Antibodies were used at a concentration of 0.2-0.5 micrograms / ml. Counts
#' were generated with CellRanger v2.1.1.  Cell barcodes with low UMI
#' counts and doublets were removed.  Cells were clustered based on ADT
#' expression.  Cell types were gated based on canonical marker expression from
#' a viSNE plot.
#'
#' Aggregated patient information for the CITE-seq data is available in
#' Supplementary Table 1f of the original study.
#'
#' scRNA-seq of additional patients is available but not included in this
#' data set.
#'
#' A code repository from the original manuscript is available:
#'\url{https://github.com/giannarelli-lab/Single-Cell-Immune-Profiling-of-Atherosclerotic-Plaques}
#'
#' Data was downloaded from Figshare:
#'\url{https://figshare.com/s/c00d88b1b25ef0c5c788}
#'
#'@references
#'Fernandez, Dawn M., et al. "Single-cell immune landscape of human
#'atherosclerotic plaques." Nature medicine 25.10 (2019): 1576-1588.
#'\doi{https://doi.org/10.1038/s41591-019-0590-4}
#'
#'@export
Fernandez_artherosclerosis <- function(){

}
