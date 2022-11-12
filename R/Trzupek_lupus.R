#' Obtain the Trzupek_lupus data
#'
#' Obtain the targeted AbSeq lupus data from Trzupek et al. (2021).
#'
#'@details
#' Targeted AbSeq of T-cells and Natural Killer (NK) cells from two systemic
#' lupus erythematosus (SLE) patients - one type I interferon high and another
#' age- and sex-matched IFN low patient - and one age- and sex-matched healthy
#' donor.  For each donor, AbSeq was performed on a resting sample and a
#' sample stimulated with PMA and ionomycin.  AbSeq was performed using the
#' BD Rhapsody platform 534 genes and 51 surface protein were assayed.
#'
#' Each donor sample was stained with two hashtag barcodes.  The following
#' populations were sorted from PBMCs using FACs:
#' \itemize{
#'  \item{CD3- CD56 high (NK56 bright)}
#'  \item{CD3– CD56+ (NK56 dim)}
#'  \item{CD3+ CD8+ (CD8+ T cells)}
#'  \item{CD3+ CD4+ CD127 high CD25–/low (CD4+ CD127 high Teffs}
#'  \item{CD3+ CD4+ CD127 low CD25–/low (CD4+ CD127 low Teffs)}
#'  \item{CD3+ CD4+ CD127 low CD25high (CD4+ Tregs)}
#' }
#' Equal volumes of each sorted population were combined for each donor.  Cell
#' suspensions from resting samples and from stimulated samples were each
#' combined for staining for AbSeq. Cells from the combined resting and
#' combined stimulated samples were captured separately.
#'
#'@seealso
#'Trzupek_tcell data set from previous work by the same group.
#'
#'@references
#' Trzupek, Dominik, et al. "Single-cell multi-omics analysis reveals
#' IFN-driven alterations in T lymphocytes and natural killer cells in
#' systemic lupus erythematosus." Wellcome Open Research 6 (2021).
#'\doi{https://doi.org/10.12688/wellcomeopenres.16883.1}
#'@export
Trzupek_lupus <- function(){

}
