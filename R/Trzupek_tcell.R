#' Obtain the Trzupek_tcell data
#'
#' Obtain the targeted CITE-seq T-cell data from Trzupek et al. (2020).
#'
#' @details
#' CITE-seq from one systemic lupus erythematosis (SLE) patient, one T1D patient
#' and one autoantibody-negative healthy donor.  The T1D patient and healthy
#' donor were sequenced after the SLE sample with an extended AbSeq panel,
#' using the same sample preparation method.
#'
#' For all samples, CD4+ T-cells were selected
#' from PBMCs using bead-based negative selection.  Cells were further sorted
#' by FACs (see below).  Cells were stained simultaneously for FACs and AbSeq.
#'
#' The following T-cell subpopulations were isolated from CD4+ T-cells using
#' FACs and mixed in a 1:1:1 ratio:
#' \itemize{
#'  \item{CD127 low, CD25 high cells (Tregs)}
#'  \item{CD127 low, CD25 low T-cells (non-conventional Tregs)}
#'  \item{CD127 high (Teffs)}
#' }
#'
#' The antibody panel used in this experiment includes proteins known not to be
#' expressed on CD4+ T-cells.
#'
#' This study used the 397 gene Human Immune Response Primer Panel from
#' BD Bioscience for cDNA capture.  Reads were aligned using Bowtie2.  Error
#' correction was performed using BD Biosciences software.
#'
#'
#'@references
#'
#'@export
Trzupek_2020 <- function(){

}
