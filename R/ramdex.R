#' @title Pseudo-random number generator from the Ramdex distribution
#'
#' @description
#' Generates pseudo-random numbers from a continuous distribution
#' on [0, 1] using the inverse transform method.
#'
#' @param n Integer. Number of pseudo-random values to generate.
#'
#' @details
#' The probability density function is:
#' \deqn{f(x) = x + 2x^3, \quad 0 \leq x \leq 1.}
#'
#' The cumulative distribution function on this interval is:
#' \deqn{F(x) = \frac{x^2 + x^4}{2}.}
#'
#' This function uses the inverse CDF:
#' \deqn{F^{-1}(u) = \sqrt{\frac{-1 + \sqrt{1 + 8u}}{2}},}
#' where \eqn{u \sim U(0,1)}.
#'
#' @return
#' A numeric vector of length \code{n} with values in [0, 1]
#' following the defined distribution.
#'
#' @examples
#' # Generate 100 random values
#' sample <- ramdex(100)
#'
#' @importFrom stats runif
#' @export
ramdex <- function(n){
  u <- runif(n)
  sqrt((-1 + sqrt(1 + 8*u))/2)
}
