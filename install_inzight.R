local({
  if (Sys.info()[['sysname']] != 'Darwin') return()

  .Platform$pkgType = 'mac.binary.el-capitan'
  unlockBinding('.Platform', baseenv())
  assign('.Platform', .Platform, 'package:base')
  lockBinding('.Platform', baseenv())

  options(
    pkgType = 'both', install.packages.compile.from.source = 'always',
    repos = c(
        'https://r.docker.stat.auckland.ac.nz', 
        'https://cran.rstudio.com'
    )
  )
})

dir.create('iNZightVIT/.library', recursive = TRUE)

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
