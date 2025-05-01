
#' Clean Column Names
#'
#' Cleans and standardizes column names using `janitor::clean_names()`.
#'
#' @param data A data frame with potentially messy column names.
#'
#' @return A data frame with cleaned, snake_case column names.
#' @export
#' @importFrom janitor clean_names
clean_column_names <- function(data) {
  janitor::clean_names(data)
}
