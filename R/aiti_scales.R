#' Set manual colours
#'
#' @param n number of colours
#' @param reverse (logical) whether to reverse the order of the colours 
#' @param discrete (logical) 
#' @param faded (logical) NYI
#' @param palette NYI
#' @param ... other elements passed to ggplot2::scales
#'
#'
#' @name aiti_scale
#'
#' @rdname aiti_scale
#' @import ggplot2
#' @export aiti_colour_manual
aiti_colour_manual <- function(n = 0,
                               reverse = FALSE,
                               discrete = TRUE,
                               faded = FALSE,
                               palette = "full", ...) {

  if(discrete) {
    return(
      ggplot2::scale_colour_manual(...,
                                   values = aititheme::aiti_pal(n = n,
                                                                reverse = reverse,
                                                                faded = faded))
    )
  }

  if (!discrete) {
    pal <- aiti_palette(palette = palette, reverse = reverse)
    return(ggplot2::scale_colour_gradientn(colours = pal(256), ...))
  }

  aiti_palette <- function(palette = "full", reverse = FALSE, ...) {

    pal <- aititheme::aiti_palette_set[[palette]]

    if (reverse) pal <- rev(pal)

    grDevices::colorRampPalette(pal, ...)
  }
}


