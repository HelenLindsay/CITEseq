# Sheet "FigS4andS5" in Supplementary tables contains original cell identities
# and UMAP coordinates

library("readxl")

supp_url <- paste0("https://www.science.org/doi/suppl/10.1126/",
                   "sciimmunol.abj1031/suppl_file/",
                   "sciimmunol.abj1031_Table_S1.zip")

supp_fname <- file.path(tempdir(), "rincon_supp.zip")


# THIS COMMAND TEMPORARILY UNAVAILABLE
system(sprintf("wget %s -O %s", supp_url, supp_fname))
download.file(supp_url, destfile = supp_fname)
#unzip(supp_fname)
