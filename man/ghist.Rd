% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ghist.R
\name{ghist}
\alias{ghist}
\title{Create a quick histogram plot in ggplot.}
\usage{
ghist(x, hist_color = "black")
}
\arguments{
\item{x}{This is the vector to be plotted.}

\item{hist_color}{This is the color of the histogram that will be plotted.
The default is color black}
}
\value{
This function returns a ggplot histogram plot object.
}
\description{
This will graph a vector in a ggplot-style histogram plot with the
x-axis labeled "x".
}
\examples{
## Create a histogram plot of x.
x <- rnorm(100)
ghist(x)

}
