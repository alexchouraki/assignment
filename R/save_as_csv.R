#' Save as CSV
#' This function saves the dataframe as a csv
#' @param dframe the dataframe you want to save as .csv
#' @param filename the name and path you want to for your new .csv file
#' @param row.names false
#' @return the file
#' @import dplyr
#' @import assertthat
#' @import readxl
#' @examples
#' save_as_csv (titanic, titanic.csv, row.names = FALSE, ...)

save_as_csv <- function(dframe, filename, row.names = FALSE, ...){
  assert_that(is.data.frame(dframe))
  assert_that(not_empty(dframe))
  assert_that(is.dir(dirname(filename)))
  assert_that(is.writeable(dirname(filename)))
  assert_that(has_extension(filename,"csv"))
  write.csv2(x = dframe, file = filename, row.names = row.names, ...)
  invisible(normalizePath(filename))
}
