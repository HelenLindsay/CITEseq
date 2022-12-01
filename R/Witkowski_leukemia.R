#' Obtain the Witkowski_leukemia data
#'
#' Obtain the CITE-seq leukemia bone marrow data from Witkowski \emph{et al.}
#' (2020).
#'
#'@details
#'CITE-seq of bone marrow from four pediatric B-cell acute lymphoblastic
#'leukemia (B-ALL) patients at diagnosis, remission and relapse.
#'Cells were sorted into CD19+ and CD45+CD19- cells and mixed at a ratio 1:5
#'(i.e. enriching for non-B cell types, as "B-ALL blasts represent the
#'majority of cells in B-ALL bone marrow").
#'Independent scRNA-seq data is available for two of these patients but is not
#'included in this data set.  Clinical information about the patient samples is
#'in Supplementary Table 1
#'\url{https://ars.els-cdn.com/content/image/1-s2.0-S1535610820302142-mmc2.xlsx}
#'of the original manuscription.
#'
#'ADT reads were counted with CITE-seq-count and demultiplexed using Seurat
#'HTODemux.  Doublets and empty droplets were removed.
#'Cells in top and bottom 2% of the distribution of number of detected genes
#'were removed, as were cells with >10% mitochondrial RNA reads.
#'
#'Data were downloaded from
#'\url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE134759}.
#'Several ADTs occur in the data with no corresponding entry in the clone table.
#'As there are zero counts for the isotype controls, we assume isotype count has
#'been subtracted from the ADT counts.
#'
#'Additional data was generated in this study but is not included here:
#'\itemize{
#' \item{scRNA-seq of bone marrow cells from seven B-ALL patients, enriched as
#' for CITE-seq, and  CD45+ bone marrow cells from four healthy donors.  Two
#' of the B-ALL patient samples were also sequenced by CITE-seq}
#' \item{scRNA-seq of PBMCs from 2 healthy donors and 2 B-ALL patients}
#' \item{bulk RNA-seq of adult B-ALL samples.}
#' \item{Bone marrow and peripheral blood from mouse models.}
#'}
#'
#'@references
#'Witkowski, Matthew T., et al. "Extensive remodeling of the immune
#'microenvironment in B cell acute lymphoblastic leukemia."
#'Cancer cell 37.6 (2020): 867-882.
#'\doi{doi:10.1016/j.ccell.2020.04.015}
#'@export
Witkowski <- function(){

}
