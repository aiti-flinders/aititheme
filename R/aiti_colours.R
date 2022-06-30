aiti_colours <- function(...) {
  c(`blue` = "#1A5D9B",
    `highlight blue` = "#0077FF",
    `dark blue` = "#22233C",
    `yellow` = "#FDD969",
    `highlight yellow` = "#FCAF2B",
    `grey` = "#B2B2B2",
    `green` = "#5AA2AE",
    `purple` = "#9999FF")
  
}

aiti_cols <- function(...) {
  cols <- c(...)
  
  if (is.null(cols)) 
    return (aiti_colours())
  
  aiti_colours()[cols]
}

aiti_palettes <- function(...) {
  
  list(`main` = aiti_cols("dark blue", "blue", "yellow"),
       `blue` = aiti_cols("dark blue", "highlight blue"),
       `yellow` = aiti_cols("yellow", "highlight yellow"),
       `mixed` = aiti_cols("blue", "green", "purple"))
}

aiti_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- aiti_palettes()[[palette]]
  
  if (reverse) pal <- rev(pal)
  
  grDevices::colorRampPalette(pal, ...)
}