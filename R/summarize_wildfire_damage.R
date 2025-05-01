#' Summarize Wildfire Damage by Year
#'
#' Summarizes total acres burned and financial loss per year.
#'
#' @param data A data frame with columns `date`, `area_burned_acres`, and `estimated_financial_loss_million`.
#'
#' @return A data frame with yearly totals.
#' @export
#' @importFrom dplyr mutate group_by summarise

summarize_wildfire_damage <- function(data) {
  data %>%
    mutate(year = format(as.Date(date), "%Y")) %>%
    group_by(year) %>%
    summarise(
      total_acres = sum(area_burned_acres, na.rm = TRUE),
      total_loss_millions = sum(estimated_financial_loss_million, na.rm = TRUE)
    )
}


