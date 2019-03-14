# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

#' @export
hello <- function() {
  c("Hello, world!","Hello again")
}

#' @import ggplot2
#' @export
get_plot <- function(n = 11, min = -5, max = 5, sd = 2) {
  if (!requireNamespace("ggplot2", quietly = TRUE)) {

  }
  x <- seq(min, max, length.out = n)
  y <- dnorm(x, mean = 0, sd = sd)

  df <- data.frame(x, y)
  print(head(df))
  ggplot(df, aes(x, y)) +
    geom_point()
}

#' @import ggplot2
#' @import plotly
#' @import htmlwidgets
#' @export
get_plotly <- function(n = 11, min = -5, max = 5, sd = 2) {
  if (!requireNamespace("ggplot2", quietly = TRUE)) {

  }

  if (!requireNamespace("plotly", quietly = TRUE)) {

  }

  x <- seq(min, max, length.out = n)
  y <- dnorm(x, mean = 0, sd = sd)

  df <- data.frame(x, y)
  print(head(df))
  p <- ggplot(df, aes(x, y)) +
    geom_point()

  htmlwidgets::saveWidget(ggplotly(p), "plotly.html", selfcontained = TRUE)
}
