#' @keywords internal
#' @author David Hugh-Jones
#'
#' @section Usage:
#'
#' To estimate the proportion of liars in an experiment, use [update_prior()]
#' followed by [dist_mean()]:
#'
#' ```
#' posterior <- update_prior(heads = 33, N = 50, P = 0.5, prior = dunif)
#' dist_mean(posterior)
#' ```
#'
#' To get confidence intervals for an estimate, use [dist_hdr()]:
#'
#' ```
#' dist_hdr(posterior, conf_level = 0.95)
#' ```
#'
#' To test whether two different samples have the same proportion of
#' liars, use [difference_dist()] followed by [dist_hdr()]:
#'
#' ```
#' p2 <- update_prior(heads = 42, N = 49, P = 0.5, prior = dunif)
#' dd <- difference_dist(posterior, p2)
#' dist_hdr(dd, 0.95, bounds = c(-1, 1))
#' ```
#'
#' To test power for detecting a given proportion of liars, use [power_calc()]:
#'
#' ```
#' power_calc(N = 100, P = 0.5, lambda = 0.2)
#' ```
#'
#' To test power for detecting differences between groups, use [power_calc_difference()]:
#'
#' ```
#' power_calc_difference(N1 = 100, P = 5/6, lambda1 = 0.1, lambda2 = 0.25)
#' ```
#'
#' To compare different samples by empirical Bayes estimation, use
#' [empirical_bayes()]:
#'
#' ```
#' heads <- c(Baseline = 30, Treatment1 = 38, Treatment2 = 45)
#' N <- c(50, 52, 57)
#' result <- empirical_bayes(heads, N, P = 0.5)
#' ```
#'
#' @section Testing the package:
#'
#' To run tests on the package:
#'
#' ```
#' source(system.file("test-statistics.R", package = "truelies"))
#' ```
#' You will need \pkg{dplyr}, \pkg{purrr}, \pkg{tidyr} and \pkg{ggplot2} installed.
#'
#' This will take some time and will produce data frames of test results
#' for different parameter values, along with some plots.
#'
#' @references Hugh-Jones, David (2019). True Lies: Comment on Garbarino,
#'   Slonim and Villeval (2018). Journal of the Economic Science Association.
#'   https://link.springer.com/article/10.1007/s40881-019-00069-x.
#'
#' @docType package
"_PACKAGE"
