#' Obtain the Trzupek_tcell data
#'
#' Obtain the targeted CITE-seq T-cell data from Trzupek et al. (2020).
#'
#' @details
#' CITE-seq from one systemic lupus erythematosis (SLE) patient, one type 1
#' diabetes patient (T1D)
#' and one autoantibody-negative healthy donor.  For each patient, one sample
#' of sorted T-cell subsets and one sample of T-cells stimulated with an
#' PMA and ionomycin cocktail is available. The T1D patient and healthy
#' donor were sequenced after the SLE sample with an extended AbSeq panel,
#' using the same sample preparation methods.
#'
#' For all samples, CD4+ T-cells were selected
#' from PBMCs using bead-based negative selection.
#' For the non-stimulated samples, cells were further sorted
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
#' Data were downloaded from
#' \url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE150060}
#'
#'@seealso
#'Trzupek_coeliac data set from the same study.
#'
#'@references
#'Trzupek, Dominik, et al. "Discovery of CD80 and CD86 as recent activation
#'markers on regulatory T cells by protein-RNA single-cell analysis."
#'Genome medicine 12.1 (2020): 1-22.
#'\doi{https://doi.org/10. 1186/s13073-020-00756-z}
#'@export
Trzupek_tcell <- function(){

}
