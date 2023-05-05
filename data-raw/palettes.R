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


# make hex ----
p <- ggseg(atlas = icbm,
           hemi = "left",
           view = "lateral",
           show.legend = FALSE,
           colour = "grey30",
           size = .2,
           mapping = aes(fill =  region)) +
  scale_fill_brain2(palette = atlas$palette) +
  theme_void() +
  hexSticker::theme_transparent()

lapply(c("png"), function(x){
  hexSticker::sticker(p,
                      package = "ggsegSmith",
                      filename = sprintf("man/figures/logo.%s", x),
                      s_y = 1.2,
                      s_x = 1,
                      s_width = 1.5,
                      s_height = 1.5,
                      p_family = "mono",
                      p_size = 10,
                      p_color = "grey30",
                      p_y = .6,
                      h_fill = "white",
                      h_color = "grey30"
  )

})

pkgdown::build_favicons(overwrite = TRUE)
