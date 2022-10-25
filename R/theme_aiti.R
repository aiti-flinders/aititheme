#' AITI Theme
#' 
#' Theme for plots in AITI publications, reports, Shiny Apps.
#' 
#' This theme should be used with \code{\link{scale_colour_aiti()}}
#' 
#' @inheritParams ggplot2::theme_grey
#'
#' @param base_size 
#' @param color The background colour of the plot. One of \code{'blue', 'orange', 'yellow', 'grey'}.
#' @param base_family 
#' @param title_family Plot title font family
#' @param markdown Include \code{ggtext::element_markdown}
#'
#' @return
#' @export
#'
#' @examples
#' 
#' @importFrom ggplot2 element_line element_rect element_text element_blank rel
theme_aiti <- function(base_size = 12,
                       color = "blue",
                       base_family = "Roboto",
                       title_family = "Roboto") {
  
  bg_colour <- "#d4dee7"
  
  theme_foundation(base_size = base_size, base_family = base_family) +
    theme(line = element_line(linetype = 1, colour = "grey"),
          rect = element_rect(fill = bg_colour, 
                              linetype = 0,
                              colour = NA),
          text = element_text(colour = "black"),
          axis.title = element_blank(), 
          axis.line = element_line(),
          axis.line.y = element_blank(),
          axis.text = element_text(face = "bold", size = rel(1)),
          axis.text.x = element_text(colour = NULL),
          axis.text.y = element_text(colour = NULL),
          axis.ticks = element_line(colour = "black"),
          axis.ticks.length = unit(1, "pt"),
          axis.title.y = element_text(angle = 90,
                                      vjust = 1),
          legend.background = element_rect(),
          legend.position = "bottom",
          legend.direction = "horizontal",
          legend.box = "vertical",
          panel.grid = element_line(colour = "grey"),
          panel.grid.minor = element_blank(),
          plot.title = element_text(face = "bold", hjust = 0),
          plot.margin = unit(c(1,1,1,1), "lines"),
          strip.background = element_rect()
    )

    
}

aiti_pal <- function(palette = "colours6") {}