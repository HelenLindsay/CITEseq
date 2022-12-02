#' Obtain the Frangieh_perturb data
#'
#' Obtain the Perturb-CITE-seq melanoma cell data from Frangieh
#' \emph{et al.} (2021).
#'
#'@details
#'Frangieh \emph{et al.} introduce a new method Perturb-CITE-seq, enabling
#'pooled CRISPR perturbation screens coupled with CITE-seq.
#'
#'Perturb-CITE-seq was performed using a library of 744 short guide RNAs
#'(sgRNAs) targeting 248 genes putatively involved in cancer cell-intrinsic
#'immune checkpoint inhibitor resistance (ICR).  Patient-derived melanoma cell
#'lines stably expressing Cas9 were transduced with the library then either
#'\itemize{
#' \item{co-cultured with autologous tumour-infiltrating lymphocyte (TILs)}
#' \item{treated with IFN-gamma (performed in triplicate)}
#' \item{maintained without treatment (control, performed in triplicate)}
#'}
#'TILs were removed prior to sequencing.  Viable melanoma cells were sorted
#'using FACS.
#'
#'Counts were generated using CellRanger v3.  Cells with < 200 detected genes
#'or >18% of RNA reads from mitochondrial genes were removed.  This data set
#'contains 126966 cells meeting the above criteria.
#'
#'A code repository and data browser are available (see below).
#'
#'@references
#'Frangieh, Chris J., et al. "Multimodal pooled Perturb-CITE-seq screens in
#'patient models define mechanisms of cancer immune evasion." Nature genetics
#'53.3 (2021): 332-341.
#'\doi{https://doi.org/10.1038/s41588-021-00779-1}
#'@seealso \url{https://github.com/klarman-cell-observatory/Perturb-CITE-Seq}
#'\url{https://singlecell.broadinstitute.org/single_cell/study/SCP1064/multi-modal-pooled-perturb-cite-seq-screens-in-patient-models-define-novel-mechanisms-of-cancer-immune-evasion#study-visualize}
#'@export
Frangieh_perturb <- function(){

}
