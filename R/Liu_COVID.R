#' Obtain the Liu_COVID data
#'
#' Obtain the COVID-19 CITE-seq data of enriched PBMCs from  Liu \emph{et al.}
#' (2021).
#'
#'@details
#'CITE-seq with TCR/BCR VDJ sequencing of longitudinal samples of PBMCs
#'from 31 hospitalized COVID-19 patients and 14 age- and
#'gender-matched healthy controls.  Up to
#'four samples from different time points were taken from each COVID-19 patient,
#'starting from the time of hospital admission.
#'
#'Sequencing was performed in 3 batches.  Sample pools containing samples from
#'multiple donor were labelled with HTOs and demultiplexed using HTODemux.
#'SNP demultiplexing (demuxlet) was used to separate cells by donor.
#'
#'Cell enrichment was performed as follows:
#'Batch1:
#' B, T, CD14+ monocyte and CD14- innate cell populations:
#' B cell population was gated by CD45+CD19+CD3-
#' T cell population was gated by CD45+CD3+CD19-
#' monocyte population was gated by CD45+CD3-CD19-CD14+
#' other myeloid cells were gated by CD45+CD3-CD19-CD14-
#' Gated populations were sorted and pooled with unsorted PBMCs at a ratio of
#' 1:1:1:1
#'
#'Batches 2 and 3:
#'non-naïve T and B cells
#' Non-naïve B cell population was gated by CD45+CD19+IgD- or CD27+
#' Non-naïve T cell population was gated by CD45+CD3+CCR7low or CD95+.
#'
#'For the healthy controls, CITE-seq of buffy coat and PBMC were performed but
# only PBMCs were used in the original analysis
#'
#'Data were downloaded from
#'\url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE161918}
#'
#'Liu \emph{et al.} also measured serum protein levels and blood cell counts.
#'These are included in the code repository (see below).
#'
#'@references
#'Liu, Can, et al. "Time-resolved systems immunology reveals a late juncture
#'linked to fatal COVID-19." Cell 184.7 (2021): 1836-1857.
#'\doi{10.1016/j.cell.2021.02.018}
#'@seealso
#'Code repository: \url{https://github.com/niaid/covid19-time-resolved}
#'Data browser:
#'\url{https:// cellxgene.cziscience.com/collections/ed9185e3-5b82-40c7-9824-b2141590c7f0}
#'@export
Liu_COVID <- function(missasigned = FALSE){
    # colData includes "missasigned" category, exclude by default?

}
