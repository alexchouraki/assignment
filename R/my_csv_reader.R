#' My CSV reader
#' This function reads CSV files in a folder
#' @param folder containing the .csv files
#' @return the dataframe contained in the csv
#' @import readxl
#' @import assertthat
#' @import utils
#' @example
#' \dontrun{
#' my_csv_reader("Desktop/jeux_video.csv")
#'}

my_csv_reader <- function(folder){
  x <- list.files(path = folder, pattern = ".*csv$", full.names = TRUE)
  assert_that(is.dir(dirname(folder)))
  result <- lapply(x, read.csv2)
  return(result)
}
