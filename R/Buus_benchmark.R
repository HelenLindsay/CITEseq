#' Obtain the Buus_benchmark data
#'
#' Obtain the single cell CITE-seq benchmarking data from a healthy donor and a
#' lung tumor patient from Buus et al (2021).
#'
#' @details
#'Buus \emph{et al} performed a benchmarking study of CITE-seq antibody staining
#'conditions.  A panel of 52 antibodies was tested with two different antibody
#'concentrations, two different staining volumes, two different cell counts and
#'two different tissues (PBMCs from one healthy donor and immune cells from
#'a lung cancer patient).  RNA was sequenced at a shallow but sufficient depth
#'to assign cell major lineages (~4000 reads per cell).
#'
#'Buus \emph{et al} aligned the RNA-seq reads using kallisto to a polyA
#'transcriptiome based on the CellRanger GTF.  ADTs and HTOs were aligned
#'using KITE (kallisto).  Seurat was used for demultiplexing.
#'
#'This data set includes the cells assigned as singlets via hashtag
#'demultiplexing and scDblFinder, filtered to remove cells with >15%
#'mitochondrial reads and cells with <= 60 genes expressed.
#'
#'Data was downloaded from Figshare
#'\url{https://doi.org/10.6084/m9.figshare.c.5018987}
#'
#'Code from the original study is available (link below).
#'
#'@references
#'Buus, Terkild B., et al. 'Improving oligo-conjugated
#'antibody signal in multimodal single-cell analysis.'
#'Elife 10 (2021): e61973.
#'\doi{https://doi.org/10.7554/eLife.61973}
#'
#'@seealso
#'\url{https://github.com/Terkild/CITE-seq_optimization}
#'
#'@export
Buus_benchmark <- function(samples = c("all", "healthy", "lung")){

    samples <- match.arg(samples)
    if (! samples == "all"){
        if (samples == "healthy"){
            # Subset where tissue == "PBMC"

        } else if (samples == "lung"){
            # Subset where tissue == "Lung"
        }
    }
}
