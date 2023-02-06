#' Obtain the Vanuytsel_liver data
#'
#' Obtain the fetal liver CITE-seq data from Vanuytsel \emph{et al} (2022).
#'
#'@details
#'Vanuytsel \emph{et al} profiled human fetal liver (FL) cells enriched for FL
#'hematopoietic stem cells (HSCs).  The FL sample used for CITE-seq was
#'collected at 21 weeks developmental age. FL cells were enriched for CD34+ by
#'magnetic bead separation.  The CD34- population was sorted into GYPA(CD235a)+
#'and GYPA- populations using FACS.  One CD34+ bulk sample was collected.  For
#'another sample CD34+ was further enriched for FL HSC with engraftment
#'potential using FACs for GPI-80.  Mouse embryonic stem cells were spiked in to
#'CITE-seq preparation.
#'
#'Fastq files and RNA counts were generated using cellranger v3.0.2.  ADT counts
#'were generated using CITE-Seq-Count v 1.4.2.  The mouse spike in fraction was
#'used for setting doublet thresholds and detecting non-specific binding.
#'
#'ADT count data was provided by the corresponding author.
#'Column data was downloaded from the interactive data browser
#'\url{https://cells.ucsc.edu/?ds=engraftable-hsc}.
#'
#'A code repository is available (See below).
#'@references
#'Vanuytsel, Kim, et al. "Multi-modal profiling of human fetal liver
#'hematopoietic stem cells reveals the molecular signature of engraftment."
#'Nature communications 13.1 (2022): 1-13.
#'\doi{}
#'
#'@seealso
#'Code repository \url{https://github.com/CReM-BU/Vanuytsel_hPSC}
#'Interactive CITE-seq data browser \url{https://engraftable-hsc.cells.ucsc.edu}
#'@export
Vanuytsel_liver <- function(){

}
