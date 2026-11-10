#' @title Pseudo-random number generator from the Ramdex distribution
#'
#' @description
#' Generates pseudo-random numbers from a continuous distribution
#' on [-1, 1] using the inverse transform method.
#'
#' @param n Integer. Number of pseudo-random values to generate.
#'
#' @details
#' The probability density function is:
#' \deqn{f(x) = \frac{3(x + 1)^2}{8}, \quad -1 \leq x \leq 1.}
#'
#' The cumulative distribution function on this interval is:
#' \deqn{F(x) = \frac{(x + 1)^3}{8}.}
#'
#' This function uses the inverse CDF:
#' \deqn{F^{-1}(u) = 2u^{1/3} - 1,}
#' where \eqn{u \sim U(0,1)}.
#'
#' @return
#' A numeric vector of length \code{n} with values in [-1, 1]
#' following the defined distribution.
#'
#' @examples
#' # Generate 100 random values
#' ramdex(100)
#'
#' @importFrom stats runif
#'
#' @export
ramdex <- function(n){
  u <- runif(n)
  2*u^(1/3) - 1
}
