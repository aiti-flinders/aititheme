aiti_colours <- function(...) {
  c(`blue` = aititheme::aiti_blue,
    `highlight blue` = aititheme::aiti_highlight_blue,
    `dark blue` = aititheme::aiti_darkblue,
    `yellow` = aititheme::aiti_yellow,
    `highlight yellow` = aititheme::aiti_highlight_yellow,
    `grey` = aititheme::aiti_grey,
    `green` = aititheme::aiti_green,
    `purple` = aititheme::aiti_purple)
  
}

aiti_cols <- function(...) {
  cols <- c(...)
  
  if (is.null(cols)) 
    return (aiti_colours())
  
  aiti_colours()[cols]
}

#' Title
#'
#' @param palette 
#'
#' @return
#' @export
#'
#' @examples
aiti_palettes <- function(palette = "main") {
  
  switch(palette,
         "main" = aiti_cols("dark blue", "blue", "yellow"),
         "blue" = aiti_cols("dark blue", "highlight blue"),
         "yellow" = aiti_cols("yellow", "highlight yellow"),
         "mixed" = aiti_cols("blue", "green", "purple"))
}


aiti_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- aiti_palettes(palette)
  
  if (reverse) pal <- rev(pal)
  
  grDevices::colorRampPalette(pal, ...)
}