#' Create a quick histogram plot in ggplot.
#'
#' This will graph a vector in a ggplot-style histogram plot with the
#' x-axis labeled "x".
#'
#' @param x This is the vector to be plotted.
#' @param hist_color This is the outline of the histogram that will be plotted.
#' The default is color black
#' 
#' @return This function returns a ggplot histogram plot object.
#'
#' @examples
#' ## Create a histogram plot of x.
#' x <- rnorm(100)
#' ghist(x)
#'
#' @import
#'   ggplot2
#'   magrittr
#'
#' @export

ghist <- function(x, hist_color = "black") {
  data.frame(x) |>
    ggplot(aes(x = x)) +
    geom_histogram(color = hist_color)
}
