options(
    repos = c(
        'https://r.docker.stat.auckland.ac.nz', 
        'https://cran.rstudio.com'
    )
)

system('brew install gtk+')

local({
  if (Sys.info()[['sysname']] != 'Darwin') return()

  .Platform$pkgType = 'mac.binary.el-capitan'
  unlockBinding('.Platform', baseenv())
  assign('.Platform', .Platform, 'package:base')
  lockBinding('.Platform', baseenv())

  options(
    pkgType = 'both', install.packages.compile.from.source = 'always',
    repos = c(
        'https://macos.rbind.org',
        'https://r.docker.stat.auckland.ac.nz', 
        'https://cran.rstudio.com'
    )
  )
})

install.packages(c('RGtk2', 'cairoDevice', 'rattle'))

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
