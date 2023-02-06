#' Obtain the Shangguan_HIV data
#'
#' Obtain the normalized CITE-seq HIV vaccination data from
#' Shangguan \emph{et al.} (2021).
#'
#'@details
#'CITE-seq of PBMCs from 12 participants in a human HIV vaccine trial (RV306),
#'with samples taken after participants finished the vaccine regime.  ADT data
#'has been demultiplexed and normalized using DSB
#'\url{https://cran.r-project.org/web/packages/dsb/index.html}.
#'
#'In previous work, Shangguan \emph{et al} identified a post-vaccination gene
#'expression signature associated with reduced risk of infection with simian
#'or human immunodeficiency virus (SIV/HIV).  In this study, Shangguan
#'\emph{et al} investigated this gene signature and its relationship with
#'antibody-dependent cellular phagocytosis (ADCP) by generating RNA-seq,
#'scRNAseq, and CITE-seq of blood or PBMCs from participants in human HIV
#'vaccine trials.
#'
#'This data set includes the CITE-seq.  ADCP was measured in a separate assay,
#'and the ADCP status of each participant is in the sample metadata.
#'
#'For CITE-seq, PBMC samples were stained with hashtag oligonucleotides (HTO)
#'and processed in two batches.  Counts were generated using CellRanger v3.1.0.
#'Seurat v3.1 was used for HTO sample demultiplexing.  Cells with 10% or more
#'mitochondrial genes were removed.  Isotype controls were included in the
#'antibody staining panel and were used for normalizing the the data.  The
#'isotype controls are not in the data set.
#'
#'TO DO: (BERNAT?) CHECK HOW RNA IS NORMALISED
#'
#'Data were downloaded from \url{https://doi.org/10.6084/m9.figshare.c.5416197}
#'
#'A code repository is available (see below).
#'@references
#'Shangguan, Shida, et al. "Monocyte-derived transcriptome signature indicates
#'antibody-dependent cellular phagocytosis as a potential mechanism of
#'vaccine-induced protection against HIV-1." Elife 10 (2021).
#'\doi{https://doi.org/10.7554/eLife.69577}
#'@seealso \url{https://github.com/ thomaslab-MHRP/eLife_2021}
#'@export
Shangguan_HIV <- function(){

}
