## code to prepare `colours` dataset goes here
library(aititheme)

aiti_colours <- c(
  `AITI Orange` = "#E75730",
  `Neon Purple` = "#8000FF",
  `Flinders Gold` = "#FFd300",
  `Sustainable Green` = "#4AEAB2",
  `Soft Black` = "#2B2228",
  `Laurel Green` = "#4D5C5A",
  `Concrete Grey` = "#99A2A5",
  `Just White` = "#FFFFFF",
  `Hard Black` = "#000000"
)

usethis::use_data(aiti_colours, overwrite = TRUE)

aiti_palettes <- list(
  `main` = aiti_cols("AITI Orange", "Soft Black", "Laurel Green", "Concrete Grey"),
  `purple` = aiti_cols("Neon Purple", "Soft Black", "Laurel Green", "Concrete Grey"),
  `flinders` = aiti_cols("Flinders Gold",  "Laurel Green", "Concrete Grey"),
  `green` = aiti_cols("Sustainable Green", "Soft Black", "Laurel Green", "Concrete Grey"),
  `passive` = aiti_cols("Soft Black", "Laurel Green", "Concrete Grey"),
  `just orange` = aiti_cols("AITI Orange", "Just White"),
  `just green` = aiti_cols("Sustainable Green", "Hard Black")
)

usethis::use_data(aiti_palettes, overwrite = TRUE)
