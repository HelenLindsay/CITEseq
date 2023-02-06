#' Obtain the Su_COVID data
#'
#' Obtain the CITE-seq PBMC data patients with COVID-19 and healthy donors from
#' Su \emph{et al.} (2020).
#'
#'@details
#'PBMCs from serial blood draws of 129 COVID-19 patients and 16 healthy
#'controls.  For all but 4 of the COVID-19 patients, samples from two time
#'points are available.
#'
#'Data were downloaded from
#'\url{https://fh-pi-gottardo-r-eco-public.s3.amazonaws.com/SingleCellDatasets/su_2020-adt.h5ad}
#'and \url{https://fh-pi-gottardo-r-eco-public.s3.amazonaws.com/SingleCellDatasets/su_2020-adt.h5ad}.
#'Antibody clone information is from Supplementary Table S1.8
#'
#'Secreted protein and metabolite data is also available.
#'
#'@references
#'Su, Yapeng, et al. "Multi-omics resolves a sharp disease-state shift between
#'mild and moderate COVID-19." Cell 183.6 (2020): 1479-1495.
#'\doi{10.1016/j.cell.2020.10.037}
#'
#'@param samples Which samples should be returned?  One of "all", "COVID" or
#'"healthy".
#'@export
Su_COVID <- function(samples = c("all", "COVID", "healthy")){
    samples <- match.arg(samples)
}
