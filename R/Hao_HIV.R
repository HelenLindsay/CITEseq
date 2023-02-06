#' Obtain the Hao_HIV data
#'
#' Obtain the CITE-seq and ECCITE-seq data from Hao et al. (2021).
#'
#' @details
#' CITE-seq and ECCITE-seq of PBMCs from 8 volunteers enrolled in a HIV vaccine
#' trial.  A total of 211000 human PBMCs were collected from 8 volunteers
#' enrolled in a HIV vaccine trial.  Samples were collected immediately before
#' (Day 0), and 3 and 7 days after administration of vaccine.
#'
#' For each experiment frozen PMBCs from four different patients at the 3
#' different time points were processed together.  Cells were then divided
# and processed independently for 3P (CITE-seq) and 5P (ECCITE-seq) protocols.
#'
#'The ECCITE-seq experiment used a combination of ECCITE-seq and TotalSeq C
#'reagents for CD45RA and CD45RO.
#'
#'Data were downloaded from
#'\url{https://atlas.fredhutch.org/nygc/multimodal-pbmc}
#'
#'Information about the donors is available in the supplementary material
#'\url{https://ars.els-cdn.com/content/image/1-s2.0-S0092867421005833-mmc3.xlsx}
#'
#'@references
#'Hao, Yuhan, et al. "Integrated analysis of multimodal single-cell data."
#'Cell 184.13 (2021): 3573-3587.
#'\doi{https://doi.org/10.1016/j.cell.2021.04.048}
#'@export
Hao_HIV <- function(modality = c("both", "CITE", "ECCITE")){
    # To do: return singlecellexperiment if single assay requested
    # Otherwise multiassayexperiment

}
