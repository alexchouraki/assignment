#' Draw a name
#'
#' @param prenom le prénom à afficher
#'
#' @return la courbe du nom
#' @import prenoms
#' @import ggplot2
#' @import tidyr
#' @example
#' draw_a_name("Alexandre")




draw_a_name <- function(prenom){
  result <- ggplot(data = prenoms %>%
                     group_by(year, name) %>%
                     summarise(total = sum(n)) %>%
                     filter(name == prenom),
                   aes(x = year,y = total)) + geom_line() + ggtitle(prenom) + labs(x = "year", y = "n")
  return(result)
}


