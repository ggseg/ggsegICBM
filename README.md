
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggsegICBM

<!-- badges: start -->

[![DOI](https://zenodo.org/badge/250281676.svg)](https://zenodo.org/badge/latestdoi/250281676)
[![R-CMD-check](https://github.com/ggseg/ggsegICBM/workflows/R-CMD-check/badge.svg)](https://github.com/ggseg/ggsegICBM/actions)
<!-- badges: end -->

This package contains dataset for plotting the ICBM white tract atlas
ggseg and ggseg3d.

Mori et al., MRI Atlas of Human White Matter. Elsevier, Amsterdam, The
Netherlands (2005)
[pubmed](href%7Bhttps://www.elsevier.com/books/mri-atlas-of-human-white-matter/mori/978-0-444-51741-8)

## Installation

We recommend installing the ggseg-atlases through the ggseg
[r-universe](https://ggseg.r-universe.dev/ui#builds):

``` r
# Enable this universe
options(repos = c(
    ggseg = 'https://ggseg.r-universe.dev',
    CRAN = 'https://cloud.r-project.org'))

# Install some packages
install.packages('ggsegICBM')
```

You can install the released version of ggsegICBM from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("LCBC-UiO/ggsegICBM")
```

## Example

``` r
library(ggsegICBM)
```

<!-- ```{r, fig.height=10} -->
<!-- library(ggseg) -->
<!-- ggseg(atlas = icbm, mapping = aes(fill = region)) + -->
<!--   scale_fill_brain("icbm", package = "ggsegICBM") + -->
<!--   theme(legend.position = "bottom", -->
<!--         legend.text = element_text(size = 7)) + -->
<!--   guides(fill = guide_legend(ncol = 2)) -->
<!-- ``` -->

``` r
library(ggseg3d)

ggseg3d(atlas = icbm_3d) %>% 
  add_glassbrain("left") %>% 
  pan_camera("right lateral")
```

<img src="man/figures/README-3d-plot.png" width="100%" />

Please note that the ‘ggsegICBM’ project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project,
you agree to abide by its terms.
