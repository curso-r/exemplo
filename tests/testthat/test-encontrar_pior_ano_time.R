test_that("encontrar_pior_ano_time() works", {

  pior_ano_flamengo <- encontrar_pior_ano_time(time = "Flamengo")

  expect_equal(pior_ano_flamengo$temporada[1], 2010)

  # Teste com um time que não está no Brasileirao

  expect_warning(encontrar_pior_ano_time(time = "Barcelona"), "arguments to min")

  pior_ano_barcelona <- suppressWarnings(encontrar_pior_ano_time(time = "Barcelona"))
  expect_equal(nrow(pior_ano_barcelona), 0)

})
