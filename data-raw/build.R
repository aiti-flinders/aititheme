library(tidyverse)
library(rlang)
library(here)
library(yaml)
library(xml2)

theme_data <- new_environment()

load_aiti <- function() {
  out <- yaml.load_file("data-raw/aiti.yml")
  out$bg <- set_names(map_chr(out$bg, "value"), map_chr(out$bg, "name"))
  out$palettes <- map(out$palettes, ~map_dfr(., as_tibble))
  out
}

theme_data$aiti <- load_aiti()

usethis::use_data(theme_data, overwrite = TRUE)
