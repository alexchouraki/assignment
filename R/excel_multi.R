#' excel_multi
#'
#' @param file is an excel file
#' @return all dataframes in the excel file
#' @import readxl
#' @import assertthat
#'
#' @examples
#' \dontrun{
#' excel_multi("Desktop/titanic.xlsx")
#'}
excel_multi <- function(file){
  assert_that(has_extension(filename,"xlsx"))
  all_sheets <- readxl::excel_sheets(file)
  result <- lapply(all_sheets, function(sheet){
    readxl::read_excel(file, sheet = sheet)
  }
  )
  return(result)
}
