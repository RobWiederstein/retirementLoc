
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/RobWiederstein/retirement/workflows/R-CMD-check/badge.svg)](https://github.com/RobWiederstein/retirement/actions)
[![Travis build
status](https://travis-ci.com/RobWiederstein/retirement.svg?branch=main)](https://travis-ci.com/RobWiederstein/retirement)
[![Codecov test
coverage](https://codecov.io/gh/RobWiederstein/retirement/branch/main/graph/badge.svg)](https://codecov.io/gh/RobWiederstein/retirement?branch=main)
<!-- badges: end -->

<h4 align="center">
<a href="https://rob-wiederstein.shinyapps.io/retirement-dashboard/?_ga=2.138388592.1542637753.1630614255-2110524801.1630416115"><img src='man/figures/retirement-dashboard.png' align="center" height="400"/><br/></a>
<a href="https://rob-wiederstein.shinyapps.io/retirement-dashboard/?_ga=2.138388592.1542637753.1630614255-2110524801.1630416115">Retirement
Locator</a>
</h4>

# Introduction

The goal of the `retirementLoc` package was to consolidate some diverse
and relevant factors on where to locate for retirement. The data is
located in the `retirementLoc` package but displayed on a separate
dashboard
[here](https://rob-wiederstein.shinyapps.io/retirement-dashboard/?_ga=2.138388592.1542637753.1630614255-2110524801.1630416115).
The variables in the `retirementLoc` dataset are:

<table class="table table-striped" style="margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="text-align:left;">
fips
</td>
<td style="text-align:left;">
cbsa_desig
</td>
<td style="text-align:left;">
violent_crime_rate
</td>
</tr>
<tr>
<td style="text-align:left;">
lon
</td>
<td style="text-align:left;">
rucc_2013
</td>
<td style="text-align:left;">
average_daily_pm2_5
</td>
</tr>
<tr>
<td style="text-align:left;">
lat
</td>
<td style="text-align:left;">
partisan_lean
</td>
<td style="text-align:left;">
prim_care_dr_rate
</td>
</tr>
<tr>
<td style="text-align:left;">
state
</td>
<td style="text-align:left;">
med_hh_inc_2019
</td>
<td style="text-align:left;">
avg_annual_temp
</td>
</tr>
<tr>
<td style="text-align:left;">
county
</td>
<td style="text-align:left;">
pct_bachelor
</td>
<td style="text-align:left;">
median_home_price
</td>
</tr>
<tr>
<td style="text-align:left;">
pop_2020
</td>
<td style="text-align:left;">
broadband_2017
</td>
<td style="text-align:left;">
yoy_price_chg_pct
</td>
</tr>
<tr>
<td style="text-align:left;">
pct_pop_change
</td>
<td style="text-align:left;">
life_exp
</td>
<td style="text-align:left;">
years_to_payoff
</td>
</tr>
</tbody>
</table>

## Installation

You can install the development and experimental version of
`retirementLoc` from its
[repository](https://github.com/RobWiederstein/retirementLoc) with:

``` r
# Or the development version from GitHub:
# install.packages("devtools")
install_github("RobWiederstein/retirementLoc")
```

## Load Data

Once the development package is installed, it can be loaded via:

## Common Questions

The data can provide some practical guidance as to candidate locations
by identifying high growth counties, reasonable housing costs, air
quality and life expectancy. For example, the code below might be used
to answer where housing costs are reasonable:

``` r
retirementLoc |>
        dplyr::arrange(years_to_payoff) |>
        dplyr::select(state, county, pop_2020, years_to_payoff) |>
        dplyr::slice(1:5)
#> # A tibble: 5 × 4
#>   state county   pop_2020 years_to_payoff
#>   <chr> <chr>       <dbl>           <dbl>
#> 1 OK    Harmon       2557             0.9
#> 2 OK    Tillman      7229             0.9
#> 3 WV    Wyoming     20123             0.9
#> 4 AR    Phillips    17299             1  
#> 5 MN    Traverse     3218             1
```

<!--You'll still need to render `README.Rmd` regularly, to keep `README.md` up-to-date. `devtools::build_readme()` is handy for this. You could also use GitHub Actions to re-render `README.Rmd` every time you push. An example workflow can be found here: <https://github.com/r-lib/actions/tree/master/examples>.


# Displaying Code Blocks

In that case, don't forget to commit and push the resulting figure files, so they display on GitHub and CRAN.
-->

## Code of Conduct

Please note that the retirementLoc project is released with a
[Contributor Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by the terms.
