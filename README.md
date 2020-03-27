
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggsegICBM

<!-- badges: start -->

[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/LCBC-UiO/ggsegICBM?branch=master&svg=true)](https://ci.appveyor.com/project/LCBC-UiO/ggsegICBM)
[![Travis build
status](https://travis-ci.com/LCBC-UiO/ggsegICBM.svg?branch=master)](https://travis-ci.com/LCBC-UiO/ggsegICBM)
<!-- badges: end -->

This package contains dataset for plotting the ICBM white tract atlas
ggseg and ggseg3d.

## Installation

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
