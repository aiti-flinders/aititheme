points_to_mm <- function(points) {
  as.numeric(grid::convertX(ggplot2::unit(points, "points"), "mm"))[1]
}

#showtext setup for Roboto
enable_aiti_fonts <- function(dpi = 72) {
  sysfonts::font_add_google("Roboto", "Roboto")
  showtext::showtext_auto()
  showtext::showtext_opts(dpi = {{dpi}})
  
}