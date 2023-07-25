install_aiti_fonts <- function() {
  requireNamespace("sysfonts", quietly = TRUE)
  
  cli::cli_progress_step("Installing Space Mono font from Google Fonts")
  sysfonts::font_add_google("Space Mono", "Space Mono")
  cli::cli_progress_step("Successfully installed Space Mono font")
  
}
