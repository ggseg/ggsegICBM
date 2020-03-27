# ggseg ----
# context("test-adapt_scales")
# test_that("Check that ggseg:::adapt_scales is working", {
#   expect_equal(mode(ggseg:::adapt_scales(unnest(icbm, ggseg))), "list")
# })

context("test-palettes")
test_that("check new palettes work", {
  expect_equal(length(brain_pal("icbm", package = "ggsegICBM")), 47)

  expect_error(brain_pal("icbm"), "not a valid")

  # expect_true(all(names(brain_pal("icbm", package = "ggsegICBM")) %in% icbm$region))
})
#
# context("test-ggseg-atlas")
# test_that("atlases are true ggseg atlases", {
#
#   expect_true(is_ggseg_atlas(icbm))
#
# })
#
# context("test-ggseg")
# test_that("Check that polygon atlases are working", {
#   expect_is(ggseg(atlas = icbm),c("gg","ggplot"))
#
#   expect_is(ggseg(atlas = icbm, mapping = aes(fill = region)),
#             c("gg","ggplot"))
#
#   expect_is(ggseg(atlas = icbm, mapping = aes(fill = region)) +
#               scale_fill_brain("icbm", package = "ggsegICBM"),
#             c("gg","ggplot"))
#
#   expect_is(ggseg(atlas = icbm, mapping = aes(fill = region)) +
#               scale_fill_brain("icbm", package = "ggsegICBM"),
#             c("gg","ggplot"))
#
#   expect_warning(ggseg(atlas = icbm, mapping=aes(fill=area),
#                   position="stacked"), "Cannot stack")
#
#   expect_is(ggseg(atlas = icbm, mapping=aes(fill=area), adapt_scales = F ),c("gg","ggplot"))
#
# })


# ggseg3d ----
context("test-ggseg3d")
test_that("Check that mesh atlases are working", {
  expect_is(
    ggseg3d(atlas=icbm_3d),
    c("plotly", "htmlwidget")
  )
})



context("test-ggseg3d-atlas")
test_that("atlases are true ggseg3d atlases", {

  expect_true(is_ggseg3d_atlas(icbm_3d))

})
