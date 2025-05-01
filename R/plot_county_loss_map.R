#' Plot County-Level Wildfire Loss
#'
#' Plots a choropleth map of total financial loss by county in California.
#'
#' @param data A data frame with columns `location` and `estimated_financial_loss_million`.
#'
#' @return A ggplot2 object.
#' @export
#' @importFrom dplyr mutate group_by summarise left_join
#' @importFrom ggplot2 ggplot geom_sf aes scale_fill_viridis_c labs theme_minimal
#' @importFrom tigris counties

plot_county_loss_map <- function(data) {
  data <- data %>%
    mutate(location = toupper(gsub(" County", "", location))) %>%
    group_by(location) %>%
    summarise(total_loss = sum(estimated_financial_loss_million, na.rm = TRUE))

  ca_counties <- tigris::counties(state = "CA", cb = TRUE, class = "sf") %>%
    mutate(NAME = toupper(NAME))

  ca_map <- left_join(ca_counties, data, by = c("NAME" = "location"))

  ggplot(ca_map) +
    geom_sf(aes(fill = total_loss), color = "white") +
    scale_fill_viridis_c(option = "inferno", na.value = "grey90") +
    labs(title = "Wildfire Loss by County (CA)", fill = "Total Loss\n(Millions)") +
    theme_minimal()
}
