#' Obtain the PomboAntunes_glioblastoma_hs data
#'
#' Obtain the human glioblastoma single cell CITE-seq data from
#' Pombo Antunes et al (2021).
#'
#' @details
#'CITE-seq of CD45+ cells from one patient with newly diagnosed (ND)
#'glioblastoma and two patients with recurrent glioblastoma.  RNA-seq of the
#'same recurrent patient samples and additional patient samples is available.
#'
#'Patient information is included as metadata.  Column names have been
#'standardized to lower snake case.  The colData includes the
#'cluster identity and assignment from the original study.
#'
#'In the original study, a library-specific batch effect was observed in these
#'ADT samples.
#'
#'Patient information is from Supplementary Table 1 of the original article and
#'the CITE-seq antibody panel is in Supplementary Table 14.
#'
#'A code repository for the original analysis is available (see below).
#'
#'Additional data available but not included here:
#'\itemize{
#'  \item{scRNA-seq for 7 patients with newly diagnosed and 4 patients with
#'  recurrent glioblastoma}
#'  \item{scRNA-seq for CD45+ immune cells from GL261 tumors (mouse).}
#'}
#'Data was downloaded from
#'\url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE163120}
#'
#'@references
#'Pombo Antunes, Ana Rita, et al. "Single-cell profiling of myeloid cells
#'in glioblastoma across species and disease stage reveals macrophage
#'competition and specialization." Nature neuroscience 24.4 (2021): 595-610.
#'\doi{https://doi.org/10.1038/s41593-020-00789-y}
#'
#'@seealso
#'Code:
#'\url{https://github.com/Movahedilab/Glioblastoma}
#'
#'Interactive data explorer:
#'\url{www.brainimmuneatlas.org}
#'
#'@export
PomboAntunes_glioblastoma_hs <- function(){

}
