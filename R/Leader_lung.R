#' Obtain the Leader_lung data
#'
#' Obtain the lung cancer CITE-seq data from Leader et al. (2021).
#'
#' @details
#' CITE-seq of non-small cell lung cancer (NSCLC) lesions and patient-matched
#' non-involved lung (nLung) tissue from 8 patients.
#'
#' Tumor and nLung tissue was enriched for CD45+ cells before sequencing.  Two
#' different enrichment methods were used. Leader \emph{et al} used a mixture
#' of commercially available CITE-seq antibodies and in-house conjugated
#' antibodies.  Samples from each patient were stained with a different
#' antibody panel.  NSCLC and nLung samples from each patient were sequenced
#' in the same batch.
#'
#' Due to the complex study design and batch effects, in the original
#' study CITE-seq counts were quantile normalised across patients.
#'
#' We encountered the following issues matching the antibody clones to the
#' ADT names in the data:
#' \itemize{
#'  \item{26 ADTs with correct TotalSeq barcode sequences occur in the data
#' but not in the antibody clone tables.  These do not have Vendor information
#' in the clone table}
#'  \item{Three antigens (CD127, CD26 and CD28) occur in
#' both the data and the clone table but the provided barcodes do not match
#' the vendor supplied barcodes.}
#' \item{We were unable to match several of the custom antibodies
#' (i.e. no provided TotalSeq category and 6 nucleotide barcode sequence)
#' between the data and the clone table, therefore some Data_Name entries are
#' NA and vice versa}
#' }
#'
#' The original data includes empty cells.
#'
#' Data were downloaded from
#' \url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE154826}
#'
#' A repository containing code used in the original analysis and processed
#' data is also available (see below).  Cell to cluster annotations are included
#' in this repository.
#'
#' Additional RNA-seq samples from 27 patients and scRNA/TCRseq samples from 3
#' patients are available but not included in this data set.
#'
#'@references
#'Leader, Andrew M., et al. "Single-cell analysis of human non-small cell
#'lung cancer lesions refines tumor classification and patient
#'stratification." Cancer Cell 39.12 (2021): 1594-1609.
#'\doi{10.1016/j.ccell.2021.10.009}
#'
#'@seealso
#'\url{www.github.com/effiken/Leader_et_al}
#'\url{https://scdissector.org/leader}
#'@export
Leader_lung <- function(){

}
