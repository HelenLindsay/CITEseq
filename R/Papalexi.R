#' Obtain the Papalexi data
#'
#' Obtain the CITE- and ECCITE-seq immune checkpoint activation data from
#' Papalexi \emph{et al.} (2021).
#'
#'@details
#'Papalexi \emph{et al.} investigated regulators of programmed death-ligand
#'(PD-L)1 expression using CITE-seq and ECCITE-seq, which combines a
#'pooled CRISPR screen with expression and surface protein measurements.  Cells
#'were stimulated to upregulate immune checkpoint molecules including PD-L1.
#'
#'\itemize{
#'  \item{CITE-seq of stimulated and unstimulated THP-1 cells (a cancer cell
#'  line of monocyte progenitor from a monocytic leukemia patient).
#'  Surface protein levels of three immune checkpoint
#'  molecules were are discussed in the original study: PD-L1, PD-L2 and CD86.
#'  This data set includes
#'  7566 cells identified as singlets, after QC filtering (see below), and
#'  measurements of 6 additional surface proteins not discussed in the study.}
#'  \item{ECCITE-seq pilot experiment.  Modified THP-1 cells with inducible Cas9
#'  were transduced with 20 CRISPR guides, either targeting PD-L1 orIFNGR1
#'  or non-targeting. Cells were stimulated.  Each cell line was hashed
#'  separately for library construction and sequencing.  Includes 1926 cells
#'  designated as singlets.}
#'  \item{ECCITE-seq experiment. Cells were transduced with 111 CRISPR guides
#'  including 10 non-targeting controls, chosen based on gene expression
#'  changes identified in the CITE-seq experiment.
#'  Independent viral transductions were performed on four biological replicates.
#'  Replicate 4 was removed because of "skewed gRNA representation".
#'  Following induction of Cas9 expression,
#'  some of the cells were stimulated to induce immune checkpoint activation.
#'  Cells were mixed in proportions 10%
#'  unstimulated: 90% stimulated for ECCITE-seq library construction. 30,328
#'  cells, of which 22,606 cells expressed at least one detectable gRNA.}
#'}
#'
#'Counts were generated using cellranger and CITEseq-count.
#'
#'In the original study, the following filtering and demultiplexing methods
#'were used:
#'\itemize{
#'  \item{For the CITE-seq experiment, cells with >10% mitochondrial reads or
#'  <500 genes expressed were removed and cells were demultiplexed using Seurat
#'  "HTODemux"}
#'  \item{For the ECCITE-seq pilot experiment, cells with >8% mitochondrial
#'  reads were removed and cells were demultiplexed using "MULTIseqDemux"
#'  }
#'}
#'
#'Data were downloaded from
#'\url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE153056}
#'
#'TO DO: I'M CONFUSED ABOUT WHAT THE ARRAYED DATA IS.
#'TO DO: I CAN'T DISTINGUISH THE STIMULATED / UNSTIMULATED CELLS IN THE CITE-SEQ
#'
#'@references
#'Papalexi, Efthymia, et al. "Characterizing the molecular
#'regulation of inhibitory immune checkpoints with multimodal
#'single-cell screens." Nature genetics 53.3 (2021): 322-331.
#'\doi{https://doi.org/10.1038/s41588-021-00778-2}
#'@export
Papalexi <- function(){

}
