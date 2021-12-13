#' Encontrar pior ano do time
#'
#' Essa função encontra o pior ano de um time
#' participante do Brasileirão.
#'
#' @param time Nome do time
#'
#' @return Uma tibble
#' @export
#'
#' @examples encontrar_pior_ano_time(time = "Flamengo")
encontrar_pior_ano_time <- function(time) {
  exemplo::partidas_brasileirao %>%
    dplyr::group_by(temporada, quem_ganhou) %>%
    dplyr::filter(quem_ganhou != "Empate", quem_ganhou %in% time) %>%
    dplyr::count(quem_ganhou, sort = TRUE, name = "n_vitorias") %>%
    dplyr::ungroup() %>%
    dplyr::filter(n_vitorias == min(n_vitorias)) %>%
    dplyr::rename("time" = quem_ganhou)
}

