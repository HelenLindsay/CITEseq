#' Obtain the Lee_pancreas data
#'
#' Obtain the pancreas immune cell CITE-seq data from Lee \emph{et al.} (2021).
#'
#'@details
#'CITE-seq of immune cells isolated from pancreas tissue from 3 organ donors,
#'and 5 patients with hereditary chronic pancreatitis (CP) and 4 with idiopathic
#'CP who underwent pancreatectomy.  Live CD45+ cells were sorted from
#'digested exocrine pancreatic tissue using FACs. Counts were generated using
#'CellRanger v3.1.0.  Sample metadata is from Supplementary Table 1.  Aggregate
#'statistics of donor samples are in Table 1 of the original article.
#'
#'A code repository is available
#'\url{"https://github.com/yangysheep2018/CITE-seq-TCR_paper"}
#'
#'This data set was downloaded from
#'\url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE165045}.
#'TCR-seq of the same patients was also performed but is not included in this
#'data set.
#'
#'@references
#'Lee, Bomi, et al. "Single-cell sequencing unveils distinct immune
#'microenvironments with CCR6-CCL20 crosstalk in human chronic pancreatitis."
#'Gut 71.9 (2022): 1831-1842.
#'\doi{http://dx.doi.org/10.1136/gutjnl-2021-324546}
#'@export
Lee_pancreas <- function(condition = c("all", "organ_donor", "pancreatitis")){
    # Attach extra metadata


}
