library(dplyr)

# Make palette
k <- dplyr::slice(icbm_3d, 1) %>%
  unnest(ggseg_3d) %>%
  select(region, colour) %>%
  filter(!grepl("wall", region))

brain_pals = list(
  icbm = setNames(k$colour, k$region)
)
usethis::use_data(brain_pals, internal = TRUE, overwrite = TRUE)



devtools::load_all("../../ggsegExtra/")
icbm_3d <- ggsegExtra:::restruct_old_3datlas(icbm_3d)
icbm_3d <- as_ggseg3d_atlas(icbm_3d)
usethis::use_data(icbm_3d, internal = FALSE, overwrite = TRUE)
