#' Inspect Structure and Missing Values
#'
#' Inspects the structure and shows missing value counts for each column.
#'
#' @param data A data frame.
#'
#' @return A list with structure and missingness summary.
#' @export
#' @importFrom utils str
inspect_data <- function(data) {
  list(
    structure = str(data),
    missing_summary = sapply(data, function(x) sum(is.na(x)))
  )
}
