# DO NOT EDIT 'install.R'; instead, edit 'install.R.in' and
# use 'rake' to generate 'install.R'.

if ("BiocManager" %in% rownames(installed.packages()))
	remove.packages("BiocManager")

install.packages("BiocManager", repos="https://cran.rstudio.com")

library(BiocManager)

if(BiocManager::version() != "3.10"){
    BiocManager::install(version="3.10",
                         update=TRUE, ask=FALSE)
}


builtins <- c("Matrix", "KernSmooth", "mgcv")

for (builtin in builtins)
    if (!suppressWarnings(require(builtin, character.only=TRUE)))
        suppressWarnings(BiocManager::install(builtin,
                                              version="3.10",
                                              update=TRUE, ask=FALSE))
install.packages("devtools")
devtools::install_version("ellipsis", version = "0.3.2", repos = "http://cran.us.r-project.org")
devtools::install_version("vctrs", version = "0.3.8", repos = "http://cran.us.r-project.org")
devtools::install_version("knitr", version = "1.33", repos = "http://cran.us.r-project.org")
devtools::install_github('arendsee/rhmmer')
devtools::install_github('arendsee/phylostratr')
devtools::install_version("nnls", version = "1.4", repos = "http://cran.us.r-project.org")
devtools::install_version("fastmatch", version = "1.1-0", repos = "http://cran.us.r-project.org")
devtools::install_version("quadprog", version = "1.5-8", repos = "http://cran.us.r-project.org")
devtools::install_version("phangorn", version = "2.7.0", repos = "http://cran.us.r-project.org")
devtools::install_version("phytools", version = "0.7-70", repos = "http://cran.us.r-project.org")
devtools::install_version('rvcheck', version='0.1.8', repos = "http://cran.us.r-project.org")
BiocManager::install("ggtree")
