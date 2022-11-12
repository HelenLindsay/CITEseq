#' Obtain the Stuart_BMMC data
#'
#' Obtain the bone marrow CITE-seq data from  et al. ().
#'
#'@details
#'Stuart \emph{et al} introduce a method of data integration implemented in
#'the Seurat package.  They generated a CITE-seq data set and integrated it
#'with the Human Cell Atlas single cell bone marrow data set.
#'
#'This data set is CITE-seq of 33,454 bone marrow mononuclear cells (BMMC) from
#'a single human donor.  The cell suspension was split into 10 aliquots and
#'stained with hashtag antibodies to enable detection of doublets and empty
#'drops.  RNA reads were mapped to GRCh38 and counted with CellRanger v2.1.0.
#'ADT reads were counts with CITE-seq-count.  Cells were demultiplexed using
#'HTODemux from Seurat.
#'
#'Data were downloaded from
#'\url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE128639}
#'
#'@references
#'Stuart, Tim, et al. "Comprehensive integration of single-cell data."
#'Cell 177.7 (2019): 1888-1902.
#'\doi{https://doi.org/10.1016/j.cell.2019.05.031}
#'
#'@export
Stuart_BMMC <- function(){

}
