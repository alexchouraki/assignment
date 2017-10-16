#' draw names
#'
#' @param names les noms qu'il faut tracer
#'
#' @return la courbe avec les noms
#' @import dygraphs
#' @import dplyr
#' @import prenoms
#' @example
#' draw_names("Alexandre")

draw_names <- function(names){
  prenoms %>%
    group_by(year, name) %>%
    summarise (total = sum(n)) %>%
    filter (name %in% names) %>%
    spread(key = name, value = total) %>%
    dygraph()
}
