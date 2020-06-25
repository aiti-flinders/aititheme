theme_aiti_normal <- function(base_size = 13,
  base_family = "sans",
  flipped = FALSE,
  background = "white",
  legend = "none",
  panel_borders = FALSE) {
  ret <- theme_aiti_base(
    base_size = base_size,
    base_family = base_family,
    background = background,
    legend = legend,
    panel_borders = panel_borders
  )


  ret <- ret %+replace%
    ggplot2::theme(
      axis.line.y = ggplot2::element_blank(),
      axis.ticks.y = ggplot2::element_blank(),
      axis.title.y = ggplot2::element_blank(),
      panel.grid.major.x = ggplot2::element_blank()
    )

  # reverse when flipped = TRUE; only if type = 'normal'
  if (flipped) {
    ret <- ret %+replace%
      ggplot2::theme(
        panel.grid.major.x = ggplot2::element_line(),
        panel.grid.major.y = ggplot2::element_blank(),
        axis.line.x = ggplot2::element_blank(),
        axis.line.y = ggplot2::element_line(),
        axis.ticks.y = ggplot2::element_line(),
        axis.ticks.x = ggplot2::element_blank()
      )
  }

  ret

}
