## code to prepare `aiti_palette_set` dataset goes here

aiti_palette_set <- list(
  `full` = c(aiti_darkblue,
             aiti_blue,
             aiti_yellow,
             aiti_lightblue,
             aiti_grey,
             aiti_greyblue,
             aiti_green,
             aiti_purple),
  `blues` = c(aiti_darkblue,
              aiti_blue_2,
              aiti_blue,
              aiti_blue_4,
              aiti_lightblue)
)

save(aiti_palette_set, file = "data/aiti_palette_set.rda")
