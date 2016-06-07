
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![CRAN version](http://www.r-pkg.org/badges/version/spAddins)](http://cran.rstudio.com/web/packages/spAddins/index.html) [![CRAN mirror downloads](http://cranlogs.r-pkg.org/badges/spAddins)](http://cran.rstudio.com/web/packages/spAddins/index.html) [![Travis-CI Build Status](https://travis-ci.org/GegznaV/spAddins.png?branch=master)](https://travis-ci.org/GegznaV/spAddins) [![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/hyperium/hyper/master/LICENSE)

R package `spAddins`
====================

`spAddins` is an R package that provides a set of RStudio addins which are designed to be used in combination with user-defined RStudio keyboard shortcuts. These addins either insert text at the cursor position (e.g. insert operators `%>%`, `<<-`, `%$%`, etc.) or replace symbols in selected pieces of text (e.g., convert backslashes to forward slashes which results in strings like `"c:\data\"` converted into `"c:/data/"`).

Install package
---------------

Install released version from CRAN:

``` r
install.packages("spAddins")
```

Install development version from GitHub:

``` r
if (!require(devtools)) install.packages("devtools")
library(devtools)
install_github("GegznaV/spAddins")
```

Recommended workflow and a few examples
---------------------------------------

``` r
vignette("v1_workflow", package = "spAddins")

browseVignettes("spAddins")
```

------------------------------------------------------------------------

<p align="right">
File updated on <b>2016-06-07</b> with version of package <b>0.1.4</b>
</p>
