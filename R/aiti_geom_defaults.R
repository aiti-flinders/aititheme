#' @importFrom ggplot2 update_geom_defaults .pt

aiti_geom_defaults <- function() {
  # Define defaults for individual geoms in a style guide-consistent way

  # Note: looks as if update_geom_defaults() may be deprecated in a
  # future ggplot2
  # release (see https://github.com/tidyverse/ggplot2/pull/2749)
  #in favour of a new
  # way to update geom defaults; when this happens, replace the code below
  update_geom_defaults("point",
    list(colour = aititheme::aiti_darkblue,
      size = 6 / .pt))
  update_geom_defaults("bar",
    list(colour = aititheme::aiti_darkblue,
      fill = aititheme::aiti_darkblue,
      size = 0.75 / .pt))
  update_geom_defaults("col",
    list(colour = "white",
      fill = aititheme::aiti_blue,
      size = 0.75 / .pt))
  update_geom_defaults("line",
    list(colour = aititheme::aiti_blue,
      size = 2.5 / .pt))
  update_geom_defaults("text",
    list(colour = aititheme::aiti_black,
      size = 18 / .pt))
  update_geom_defaults("smooth",
    list(colour = aititheme::aiti_blue,
      fill = aititheme::aiti_blue))

  update_geom_defaults("path",
    list(colour = aititheme::aiti_blue,
      size = 3 / .pt))


  update_geom_defaults("label",
    list(size = 18 / .pt,
      fill = "white"))

  update_geom_defaults("area",
    list(fill = aititheme::aiti_blue,
      col = aititheme::aiti_blue))

  update_geom_defaults("density",
    list(fill = aititheme::aiti_blue,
      col = aititheme::aiti_blue))

  update_geom_defaults("dotplot",
    list(fill = aititheme::aiti_blue,
      col = aititheme::aiti_blue))

  update_geom_defaults("polygon",
    list(fill = aititheme::aiti_blue,
      col = aititheme::aiti_blue))

  update_geom_defaults("path",
    list(col = aititheme::aiti_blue))

  update_geom_defaults("ribbon",
    list(fill = aititheme::aiti_blue,
      col = aititheme::aiti_blue))

  update_geom_defaults("rect",
    list(fill = aititheme::aiti_grey,
      col = aititheme::aiti_grey))

  update_geom_defaults("boxplot",
    list(fill = 'orange',
      col = 'orange'))

  update_geom_defaults("crossbar",
    list(fill = 'orange',
      col = 'orange'))

  update_geom_defaults("errorbar",
    list(col = 'orange'))

  update_geom_defaults("linerange",
    list(col = 'orange'))

  update_geom_defaults("pointrange",
    list(col = 'orange'))

  update_geom_defaults("tile",
    list(col = "white",
      fill = 'orange'))
  
}
