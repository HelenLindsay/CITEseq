#' Obtain the Qi_granulocyte data
#'
#' Obtain the granulocyte CITE-seq benchmarking data from Qi et al. (2021).
#'
#'@details
#'This data set includes CITE-seq sample from red blood and platelet depleted
#'whole blood and bone marrow samples a healthy human donor.  CITE-seq of
#'the same samples prepared using two different platforms - 10x Genomics
#'and BD Biosciences targeted capture.  CITE-seq antibodies were used at a
#'dilution of 1:100 in a volume of 100uL.  For both platforms, demultiplexing
#'was performed using CellRanger v3.1.  Counts were generated using CellRanger
#'for the 10x samples and the BD Rhapsody pipeline for the BD Biosicens samples.
#'
#'#'Qi \emph{et al} observed that cells with low gene counts but high hashtag
#'counts in dissociated human tissue samples sequenced by 10x Genomics
#'correlated with the expected frequency of granulocytes.  Qi \emph{et al}
#'hypothesised that nucleases released by granulocytes depleted mRNA content,
#'and analysed RNA counts in cell multiplets in support of their hypothesis.
#'
#'@references
#'Qi, Jingjing, et al. "Multimodal Single-Cell Characterization of the
#'Human Granulocyte Lineage." bioRxiv (2021).
#'\doi{https://doi.org/10.1101/2021.06.12.448210}
#'
#'@export
Qi_granulocyte <- function(){

}
