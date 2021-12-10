## code to prepare `partidas_brasileirao` dataset goes here

# Baixa base da internet
partidas_brasileirao <- "https://git.io/JOqUN" %>%
  readr::read_csv2(
    locale = readr::locale(decimal_mark = ",", grouping_mark = "."),
    show_col_types = FALSE
  )

usethis::use_data(partidas_brasileirao, overwrite = TRUE)
