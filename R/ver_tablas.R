#' @export
ver_tablas_eod2017 <- function() {
  con <- con_eod2017()
  tibble::tibble(tabla = RSQLite::dbListTables(con))
}

#' @export
tabla <- function(nombre) {
  con <- con_eod2017()
  d <- dplyr::tbl(con, nombre)) %>% collect()
  return(d)
}
