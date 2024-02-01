#' Create a quick box plot in ggplot.
#'
#' This will graph a vector in a ggplot-style box plot with the
#' x-axis labeled "x".
#'
#' @param x This is the vector to be box plotted.
#' @param y This is a categorical vector optionally supplied for side by side plots.
#' The default is NULL.
#' @param horizontal This is a True or False variable that determines whether the 
#' plots are horizontal or vertical. The default is FALSE.
#' @param box_color This is the outline of the box plot that will be plotted.
#' The default is color black.
#' 
#' @return This function returns a ggplot box plot object.
#'
#' @examples
#' ## Create a box plot of x.
#' x <- rnorm(100)
#' gbox(x, horizontal = TRUE, box_color = 'blue')
#' 
#' ## Create a box plot of x
#' x <- rnorm(100)
#' y <- factor(rep(c("A", "B"), each = 50))
#' gbox(x,y)
#'
#' @import
#'   ggplot2
#'   magrittr
#'
#' @export

gbox <- function(x, y = NULL, horizontal = FALSE, box_color = "black") {
  if (is.null(y)) {
    data.frame(x) |>
      ggplot(aes(x=1,y=x)) +
      geom_boxplot(width = 0.5, color = box_color)+
      if (horizontal) coord_flip()
  } else {
    data.frame(x,y) |>
      ggplot(aes(x=y,y=x)) +
      geom_boxplot(width = 0.5, color = box_color)+
      if (horizontal) coord_flip()
  }
}
