local({
  if (Sys.info()[['sysname']] != 'Darwin') return()

  .Platform$pkgType = 'mac.binary.el-capitan'
  unlockBinding('.Platform', baseenv())
  assign('.Platform', .Platform, 'package:base')
  lockBinding('.Platform', baseenv())

  options(
    pkgType = 'binary',
    repos = c(
        'https://r.docker.stat.auckland.ac.nz', 
        'https://cran.rstudio.com'
    )
  )
})

dir.create('iNZightVIT/.library', recursive = TRUE)

# install gWidgets2RGtk2 from github (not on CRAN, yet)
utils::install.packages("devtools")
devtools::install_github("jverzani/gWidgets2RGtk2")

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
    ),
    lib = 'iNZightVIT/.library'
)
