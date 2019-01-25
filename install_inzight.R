options(
    repos = c(
        'https://r.docker.stat.auckland.ac.nz', 
        'https://cran.rstudio.com'
    )
)

utils::install.packages(
    c(
        'iNZight',
        'iNZightModules',
        'iNZightTS',
        'iNZightMR',
        'iNZightPlots',
        'iNZightRegression',
        'iNZightTools',
        'vit'
    )
)
