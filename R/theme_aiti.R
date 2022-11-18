#' AITI Theme
#' 
#' Theme for plots in AITI publications, reports, Shiny Apps.
#' 
#' This theme should be used with \code{\link{scale_colour_aiti()}}
#' 
#' @inheritParams ggplot2::theme_grey
#'
#' @param base_size 
#' @param color The background colour of the plot. One of \code{'blue', 'yellow', 'grey'}.
#' @param base_family 
#' @param title_family Plot title font family
#' @param markdown Include \code{ggtext::element_markdown}
#' @param flipped 
#'
#' @return
#' @export
#'
#' @examples
#' 
#' @importFrom ggplot2 element_line element_rect element_text element_blank rel margin unit
#' @importFrom ggtext element_markdown
theme_aiti <- function(base_size = 10,
                       colour = "blue",
                       base_family = "sans",
                       title_family = "mono",
                       markdown = FALSE,
                       flipped = FALSE) {
  
  bg_colour <- aititheme::theme_data$aiti$bg[colour]
  
  thm <- theme_foundation(base_size = base_size, base_family = base_family) +
    ggplot2::theme(line = element_line(linetype = 1, colour = "black", size = 0.25),
                   rect = element_rect(fill = bg_colour, 
                                       linetype = 0,
                                       colour = NA),
                   text = element_text(colour = "black", 
                                       lineheight = 0.9,
                                       size = base_size),
                   axis.title = element_text(size = rel(1)), 
                   axis.title.x = element_text(margin = margin(t = 6),
                                               vjust = 1),
                   axis.title.y = element_text(angle = 90,
                                               vjust = 1),
                   axis.line = element_line(size = 0.35, colour = "black"),
                   axis.line.y = element_blank(),
                   axis.ticks.y = element_blank(),
                   axis.line.x = NULL,
                   axis.text = element_text(face = "bold", size = rel(1)),
                   axis.text.x = element_text(colour = NULL),
                   axis.text.y = element_text(colour = NULL),
                   axis.ticks = element_line(colour = "black"),
                   axis.ticks.length = unit(6, "pt"),
                   axis.ticks.length.x = NULL,
                   axis.ticks.length.x.top = NULL,
                   axis.ticks.length.x.bottom = NULL,
                   axis.ticks.length.y = NULL,
                   axis.ticks.length.y.left = NULL,
                   axis.ticks.length.y.right = NULL,
                   legend.background = element_rect(),
                   legend.position = "bottom",
                   legend.direction = "horizontal",
                   legend.justification = "center",
                   legend.title = element_blank(), 
                   legend.box = "vertical",
                   panel.grid = element_line(colour = "black", size = 0.15),
                   panel.grid.major.x = element_blank(),
                   panel.border = element_blank(),
                   panel.grid.minor = element_blank(),
                   plot.title = element_text(face = "bold", hjust = 0),
                   plot.margin = unit(c(1,1,1,1), "lines"),
                   strip.background = element_rect()
    )
  
  if (flipped) {
    thm <- thm %+replace% 
      ggplot2::theme(panel.grid.major.x = element_line(),
                     panel.grid.major.y = element_blank())
  }
  
  if (markdown) {
    thm <- thm %+replace%
      ggplot2::theme(
        plot.title = ggtext::element_markdown(
          hjust = 0,
          vjust = 1,
          face = "bold",
          margin = margin(b = base_size / 2)
        ),
        plot.subtitle = ggtext::element_markdown(
          hjust = 0,
          vjust = 1,
          lineheight = 1.2
        ),
        axis.title.x = ggtext::element_markdown(),
        axis.title.y = ggtext::element_markdown())
  }
  
  thm
  
}

#' AITI Palettes
#'
#' @param palette 
#'
#' @return
#' @export
#'
#' @examples
#' @importFrom scales manual_pal div_gradient_pal seq_gradient_pal
aiti_pal <- function(palette = "colours6") {
  palettes <- aititheme::theme_data[["aiti"]][["palettes"]] 
  if (palette %in% names(palettes)) {
    colours <- palettes[[palette]][["value"]]
    max_n <- length(colours)
    f <- manual_pal(unname(colours))
    attr(f, "max_n") <- max_n
    f
  } else {
    stop(sprintf("palette %s not a valid palette.", palette))
  }
  
}

#' AITI colour and fill scales
#'
#' @inheritParams ggplot2::scale_colour_hue
#' @inheritParams aiti_pal
#' @rdname scale_aiti
#' @importFrom ggplot2 discrete_scale scale_colour_gradientn
#' @export
scale_colour_aiti <- function(palette = "colours6", 
                              discrete = TRUE,
                              ...) {
  if (discrete) {
    discrete_scale("colour", "aiti", aiti_pal(palette), ...)
  } else {
    scale_colour_gradientn(colours = pal(256), ...)
    
  }
}


#' @rdname scale_aiti
#' @export
scale_fill_aiti <- function(palette = "colours6", 
                            discrete = TRUE, 
                            ...) {
  if (discrete) {
    discrete_scale("fill", "aiti", aiti_pal(palette), ...)
  } else {
    scale_colour_gradientn(colours = pal(256), ...)
    
  }
}
