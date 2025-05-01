#' Flag or Filter Major Wildfire Incidents
#'
#' Flags or filters major incidents based on financial loss.
#'
#' @param data A data frame with `estimated_financial_loss_million` column.
#' @param threshold Minimum financial loss to qualify as major (default = 50).
#' @param filter If TRUE, return only major incidents. If FALSE, return full data with `is_major` column.
#'
#' @return A data frame.
#' @export
#' @importFrom dplyr mutate filter

flag_major_incidents <- function(data, threshold = 50, filter = TRUE) {
  data <- data %>%
    mutate(is_major = estimated_financial_loss_million >= threshold)

  if (filter) {
    return(filter(data, is_major))
  } else {
    return(data)
  }
}
