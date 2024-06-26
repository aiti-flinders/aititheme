install_aiti_fonts <- function(theme = c("old", "new")) {
  requireNamespace("sysfonts", quietly = TRUE)
  
  theme <- match.arg(theme)
  
  font <- switch(
    theme,
    old = "Roboto",
    new = "Space Mono"
  )
  
  cli::cli_progress_step("Installing {font} font from Google Fonts")
  sysfonts::font_add_google(font, font)
  cli::cli_progress_step("Successfully installed {font} font")
  
}
