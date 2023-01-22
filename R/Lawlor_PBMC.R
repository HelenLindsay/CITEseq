#' Obtain the Lawlor_PBMC data
#'
#' Obtain the PBMC CITE-seq data from Lawlor \emph{et al.} 2021
#'
#'@details
#'CITE-seq of PBMCs from 10 healthy young donors before and after in vitro
#'activation of immune cells with either anti-CD3+ anti-CD28+ for selective
#'T-cell activation or LPS for monocyte activation.  For each individual, a
#'baseline and the two activation samples are available.  Equal numbers of cells
#'from each of the 30 conditions were pooled for sequencing.  Three hashtag
#'oligonucleotides (HTO) were used to separate the experimental conditions.
#'Cells from each individual were demultiplexed by genotype using Demuxlet.
#'Multiplets were detected using a combination of HTOs and genotypes.
#'
#'HTO and ADT counts generated using CITE-seq-Count v 1.4.2.  Cells with fewer
#'than 400 detected genes and cells not identified as singlets via either cell
#'hashing or Demuxlet were discarded and are not in this data set.
#'
#'CD185 is listed in the clone table but doesn't appear in the data.  There is
#'an additional HTO for "Bcell" not discussed in the paper, which we infer
#'from the "HTO_Barcodes" column in the cell annotation table corresponds to
#'stimulation of B-cells with IgM/IgG.
#'
#'A code repository and shiny app of the original analyses are available
#'(see below).
#'
#'Data were downloaded from
#'\url{https://www.ebi.ac.uk/ena/browser/view/PRJEB40376}
#'
#'Cell annotations were downloaded from
#'\url{https://data.humancellatlas.org/explore/projects/efea6426-510a-4b60-9a19-277e52bfa815/project-matrices}
#'
#'Genotyping of each individual was performed using Illumina BeadChip Arrays.
#'Genotype information is available at
#'\url{https://www.ebi.ac.uk/ena/browser/view/ERZ1631464}
#'
#'@param mode Which assay(s) should be returned? One or all of c("rna", "adt"),
#' default return both.
#'@param singlets If TRUE (the default), only cells identified as singlets
#'in the original study are returned.  If FALSE, all cells are returned.
#'@references
#'Lawlor, Nathan, et al. "Single cell analysis of blood mononuclear cells
#'stimulated through either LPS or anti-CD3 and anti-CD28." Frontiers in
#'immunology 12 (2021): 636720.
#'\doi{https://doi.org/10.3389/fimmu.2021.636720}
#'@seealso
#'\url{https://github.com/nlawlor/PBMC_CITEseq}
#'@export
Lawlor_PBMC <- function(mode = c("rna", "adt"), singlets = TRUE){
    mode <- match.arg(mode, c("rna", "adt"), several.ok=TRUE)


    if (isTRUE(singlet)){
       # read lawlor coldata, filter "Singlet" is true, remove column "Singlet"
    }
}

