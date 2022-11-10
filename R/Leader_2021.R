#' Obtain the Leader_2021 data
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
#' Additional RNA-seq samples from 27 patients and scRNA/TCRseq samples from 3
#' patients are available but not included in this data set.
#'
#' A repository containing code used in the original analysis and processed
#' data is also available (see below).
#'
#'@references
#'Leader, Andrew M., et al. "Single-cell analysis of human non-small cell
#'lung cancer lesions refines tumor classification and patient
#'stratification." Cancer Cell 39.12 (2021): 1594-1609.
#'\doi{10.1016/j.ccell.2021.10.009}
#'
#'@seealso
#'\url{www.github.com/effiken/Leader_et_al}
#'\url{https:// scdissector.org/leader}
#'@export
Leader_2021 <- function(){

}
