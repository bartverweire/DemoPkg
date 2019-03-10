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
get_plot <- function() {
  if (!requireNamespace("ggplot2", quietly = TRUE)) {

  }
  x <- -5:5
  y <- dnorm(x, mean = 0, sd = 2)

  df <- data.frame(x, y)
  ggplot(df, aes(x, y)) +
    geom_point()
}
