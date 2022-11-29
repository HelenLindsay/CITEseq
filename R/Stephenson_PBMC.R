#' Obtain the Stephenson_PBMC data
#'
#' Obtain the COVID-19 PBMC CITE-seq data from Stephenson \emph{et al.} (2021).
#'
#'@details
#'CITE-seq of 143 individuals, comprising samples from 102 individuals with
#'COVID-19, 24 healthy volunteers, 12 healthy volunteers injected with IV-LPS
#'and 5 individuals with a non-COVID severe respiratory disease.  COVID-19
#'samples were collected from three different centres in the UK.  Samples from
#'healthy volunteers were collected from two of the same centres, and the
#'remaining stimulated and non-covid samples were collected from one centre.
#'
#'Counts were generated using CellRanger v4.0.  Reads were aligned to GrCH38
#'concatenated with the SARS-CoV-2 genome. This data set includes the cells
#'that passed QC checks: non-doublets with a minimum of 200 genes expressed
#'and <10% mitochondrial reads.  The doublet detection method varied between
#'centres.
#'
#'TCR and BCR receptor sequencing was also performed, but is not included in
#'this data set.
#'
#'When matching antibody clone information to data names, we
#'assumed by elimination that data names TCR and TCR_Vg2 matched TCR alpha/beta
#'and TCR Vdelta2 respectively.
#'
#'The data were downloaded from
#'\url{https://www.ebi.ac.uk/biostudies/arrayexpress/studies/E-MTAB-10026}
#'
#'A code repository is available (see below).
#'
#'CHECK - are all antibodies totalseq C?
#'CHECK - paper says 781,123 cells passed QC, we have 647 366
#'CHECK - paper says authors manually annotated 18 + 27 cell types, column
#'author_cell_type has 51
#'@references
#'Stephenson, Emily, et al. "Single-cell multi-omics analysis of the immune
#'response in COVID-19." Nature medicine 27.5 (2021): 904-916.
#'\doi{https://doi.org/10.1038/s41591-021-01329-2}
#'@seealso
#'\url{https://github.com/scCOVID-19/COVIDPBMC/}
#'@export
Stephenson_PBMC <- function(){

}
