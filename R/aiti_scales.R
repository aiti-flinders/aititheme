#' Colour scale with AITI palettes. 
#' 
#' @param palette 
#'
#' @param discrete 
#' @param reverse 
#' @param ... 
#'
#' @export scale_colour_aiti
scale_colour_aiti <- function(palette = "main", 
                              discrete = TRUE,
                              reverse = FALSE,
                              ...) {
  
  pal <- aiti_pal(palette = palette, reverse = reverse)
  

  if (discrete) {
    discrete_scale("colour", paste0("aiti_", palette), palette = pal, ...)
  } else {
    scale_colour_gradientn(colours = pal(256), ...)
  }

}

#' Fill scale with AITI palettes. 
#'
#' @param palette 
#' @param discrete 
#' @param reverse 
#' @param ... 
#'
#' @return
#' @export
#'
#' @examples
scale_fill_aiti <- function(palette = "main", 
                            discrete = TRUE,
                            reverse = FALSE,
                            ...) {
  pal <- aiti_pal(palette = palette, reverse = reverse)
  
  if (discrete) {
    discrete_scale("fill", paste0("aiti_", palette), palette = pal,)
  } else {
    scale_fill_gradient_n(colours = pal(256), ...)
  }
}


