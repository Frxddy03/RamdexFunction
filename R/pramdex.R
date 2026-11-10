#' @title Cumulative Distribution Function of the Ramdex Distribution
#'
#' @description
#' Evaluates the cumulative distribution function (CDF) of the Ramdex
#' continuous distribution at given values of \code{x}.
#'
#' @param x A numeric value or vector where the CDF is evaluated.
#'
#' @return A numeric vector with the corresponding cumulative probabilities.
#'
#' @details
#' The Ramdex distribution is defined on the interval [0, 1]. Its
#' cumulative distribution function is:
#'
#' \deqn{
#' F(x) =
#' \begin{cases}
#' 0, & x \leq 0 \\
#' \frac{x^2 + x^4}{2}, & 0 < x < 1 \\
#' 1, & x \geq 1
#' \end{cases}
#' }
#'
#' This function is vectorized and returns values in the interval [0, 1].
#'
#' @examples
#' pramdex(0.5)
#' pramdex(c(0, 0.25, 0.5, 0.75, 1))
#'
#' @export
pramdex <- function(x) {
  ifelse(x <= 0, 0, ifelse(x < 1, (x^2 + x^4) / 2, 1))
}
