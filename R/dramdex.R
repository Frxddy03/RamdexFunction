#' @title Probability Density Function of the Ramdex Distribution
#'
#' @description
#' Evaluates the probability density function (PDF) of the Ramdex
#' continuous distribution at given values of \code{x}.
#'
#' @param x A numeric value or vector where the density function is evaluated.
#'
#' @return A numeric vector with the corresponding density values.
#'
#' @details
#' The Ramdex distribution is defined on the interval (-1, 1) with
#' probability density function:
#'
#' \deqn{
#' f(x) =
#' \begin{cases}
#' \frac{3}{8}(x + 1)^2, & -1 < x < 1 \\
#' 0, & \text{otherwise}
#' \end{cases}
#' }
#'
#' This function is vectorized and returns 0 for values outside the support.
#'
#' @examples
#' dramdex(-0.5)
#' dramdex(0.5)
#'
#' @export
dramdex <- function(x){
  ifelse(x > -1 & x < 1, (3/8)*(x + 1)^2, 0)
}
