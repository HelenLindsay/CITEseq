#' Obtain the Lawlor data
#'
#' Obtain the CITE-seq data from Lawlor \emph{et al.}
#' ().
#'
#'@details
#'CITE-seq of PBMCs from 10 healthy young donors before and after in vitro
#'activation of immune cells with either anti-CD3+ anti-CD28+ for selective
#'T-cell activation or LPS for monocyte activation.  For each individual, a
#'baseline and the two activation samples are available.  Equal numbers of cells
#'from each of the 30 conditions were pooled for sequencing.  Three hashtag
#'oligonucleotides (HTO) were used to separate the experimental conditions.
#'Cells from each individual were demultiplexed by genotype using Demuxlet.
#'Multiplets were detected using a combination of HTOs and genotypes.
#'
#'HTO and ADT counts generated using CITE-seq-Count v 1.4.2.  Cells with fewer
#'than 400 detected genes and cells not identified as singlets via either cell
#'hashing or Demuxlet were discarded and are not in this data set.
#'
#'CD185 is listed in the clone table but doesn't appear in the data
#'
#'Data were downloaded from
#'\url{https://www.ebi.ac.uk/ena/browser/view/PRJEB40376}
#'
#'Genotyping of each individual was performed using Illumina BeadChip Arrays.
#'Genotype information is available at
#'\url{https://www.ebi.ac.uk/ena/browser/view/ERZ1631464}
#'
#'@references
#'Lawlor, Nathan, et al. "Single cell analysis of blood mononuclear cells
#'stimulated through either LPS or anti-CD3 and anti-CD28." Frontiers in
#'immunology 12 (2021): 636720.
#'\doi{https://doi.org/10.3389/fimmu.2021.636720}
#'@export
Lawlor <- function(){

}

