#' Generate a pallete of n colours from the AITI theme
#'
#' @param n number of colours to return
#' @param reverse reverse the default colour order
#' @param faded NYI
#'
#'
#'
#' @export aiti_pal
#'
aiti_pal <- function(n = 0,
                     reverse = FALSE,
                     faded = FALSE) {

  if (n > 9) {
    stop("aiti_pal only supports up to 9 colours")
  }

  if (isFALSE(faded)) {
    palette <- regular_palette(n)
  } else if (isTRUE(faded)) {
    palette <- blue_palette(n)
  }
  
  palette
}

regular_palette <- function(n) {

  if (n == 1) {
    palette <- aititheme::aiti_blue
  } else if (n == 2) {
    palette <- c(aititheme::aiti_blue,
                 aititheme::aiti_darkblue)
  } else if (n == 3) {
    palette <- c(aititheme::aiti_blue,
                 aititheme::aiti_darkblue,
                 aititheme::aiti_yellow)
  } else if (n == 4) {
    palette <- c(aititheme::aiti_blue,
                 aititheme::aiti_darkblue,
                 aititheme::aiti_yellow,
                 aititheme::aiti_lightblue)
  } else if (n == 5) {
    palette <- c(aititheme::aiti_blue,
                 aititheme::aiti_darkblue,
                 aititheme::aiti_yellow,
                 aititheme::aiti_lightblue,
                 aititheme::aiti_grey)
  } else if (n == 6) {
      palette <- c(aititheme::aiti_blue,
                   aititheme::aiti_darkblue,
                   aititheme::aiti_yellow,
                   aititheme::aiti_lightblue,
                   aititheme::aiti_grey,
                   aititheme::aiti_greyblue)
  } else if (n == 7) {
    palette <- c(aititheme::aiti_blue,
                 aititheme::aiti_darkblue,
                 aititheme::aiti_yellow,
                 aititheme::aiti_lightblue,
                 aititheme::aiti_grey,
                 aititheme::aiti_greyblue,
                 aititheme::aiti_green)
  } else if (n == 8) {
    palette <- c(aititheme::aiti_blue,
                 aititheme::aiti_darkblue,
                 aititheme::aiti_yellow,
                 aititheme::aiti_lightblue,
                 aititheme::aiti_grey,
                 aititheme::aiti_greyblue,
                 aititheme::aiti_green,
                 aititheme::aiti_purple)
  } else if (n == 9) {
    palette <- c(aititheme::aiti_blue,
                 aititheme::aiti_darkblue,
                 aititheme::aiti_yellow,
                 aititheme::aiti_lightblue,
                 aititheme::aiti_grey,
                 aititheme::aiti_greyblue,
                 aititheme::aiti_green,
                 aititheme::aiti_purple,
                 aititheme::aiti_black)
  }
}

blue_palette <- function(n) {
  ramp <- grDevices::colorRampPalette(c(aititheme::aiti_darkblue, aititheme::aiti_blue_2, aititheme::aiti_blue))
  
  palette <- ramp(n)
  
}

