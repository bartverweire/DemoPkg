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
hello <- function(n) {
  rep("Hello, world!", n)
}

#' @export
get_text <- function(text, n) {
  rep(text, n)
}

#' @export
get_df <- function(nrow, ncol) {
  df <- as.data.frame(matrix(runif(nrow * ncol, 1, 10), nrow, ncol))
  colnames(df) <- LETTERS[1:ncol]

  df
}

#' @importFrom ggplot2 ggplot geom_point
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

#' @importFrom ggplot2 ggplot geom_point
#' @importFrom plotly ggplotly
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
