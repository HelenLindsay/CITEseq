#' Obtain the Fidanza_HSC data
#'
#' Obtain the hemopoietic stem cell CITE-seq data from
#' Fidanza \emph{et al.} (2020).
#'
#'@details
#'
#'This is a CITE-seq data set of hemopoietic stem cell (HSC) progenitors
#'differentiated \emph{in vitro} from human pluripotent stem cells (hPSC).
#'CD235a- cells were sorted at days 10 and 13 after addition of
#'differentiation medium to hPSCs. At day 13 suspension cells were further
#'sorted into CD43+ and CD43- and mixed at a ratio of 25%/75%.
#'Adherent cells at day 10 and day 13 were sorted into CD31+ and CD31- and
#'treated as separate samples.  Six libraries were sequenced by CITE-seq:
#' \itemize{
#'  \item{Day 10, CD235a- cells from suspension}
#'  \item{Day 10, C31+ adherent cells}
#'  \item{Day 10, C31- adherent cells}
#'  \item{Day 13, CD235a-CD43+, mixed with CD235a-CD43- at a ratio of l:3}
#'  \item{Day 13, C31+ adherent cells}
#'  \item{Day 13, C31- adherent cells}
#' }
#'
#'RNA data were aligned to GRCh38 using CellRanger.
#'
#'Data were downloaded from
#'\url{https://www.ebi.ac.uk/arrayexpress/experiments/E-MTAB-9295/samples/?query=fidanza}
#'
#'A code repository is available (see below).
#'
#'scRNA-seq of CD235a-CD43+ cells from 2 replicate cultures is available
#'but not included in this data set.
#'@references
#'Fidanza, Antonella, et al. "Single-cell analyses and machine learning define
#'hematopoietic progenitor and HSC-like cells derived from human PSCs."
#'Blood 136.25 (2020): 2893-2904.
#'\doi{10.1182/blood.2020006229}
#'
#'@seealso
#'Code repository: \url{https://github.com/afidanza/ScRNAseq_HPC_humaniPSCs}
#'
#'Interactive data browser:
#'\url{lab.antonellafidanza.com}
#'@export
Fidanza_HSC <- function(){

}
