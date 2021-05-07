#' Theme a ggplot2 object - AITI style
#'
#' @param base_size font size
#' @param base_family font family
#' @param chart_type scatter or normal (default = normal)
#' @param flipped NYI
#' @param background NYI
#' @param legend legend position 
#' @param panel_borders (logical) default FALSE
#' @import ggplot2
#'
#' @export theme_aiti
#'

theme_aiti <- function(base_size = 13,
  base_family = "sans",
  chart_type = "normal",
  flipped = FALSE,
  background = "white",
  legend = "none",
  panel_borders = FALSE) {

  if (!chart_type %in% c("normal", "scatter")) {
    warning(paste0("Note: chart_type should be 'normal' or 'scatter', but you entered '",
      chart_type, "'. Reverting to 'normal'"))
    chart_type <- "normal"
  }



  if (chart_type == "normal") {
    ret <- theme_aiti_normal(base_size = base_size,
      base_family = base_family,
      background = background,
      legend = legend,
      panel_borders = panel_borders,
      flipped = flipped)
  }

  if (chart_type == "scatter") {
    ret <- theme_aiti_scatter(base_size = base_size,
      base_family = base_family,
      background = background,
      legend = legend,
      panel_borders = panel_borders)
    if (flipped) message("Note that the 'flipped' argument is ignored for scatter plots.")
  }



  # Call a function that modifies various geom defaults
  aiti_geom_defaults()

  # Return
  return(ret)

}
