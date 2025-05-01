## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(wildvizR)
library(dplyr)
library(ggplot2)
library(knitr)

## ----read-data, echo=TRUE-----------------------------------------------------

wildfire_data <- read.csv(system.file("extdata", "Cleaned_California_Wildfire_Damage.csv", package = "wildvizR"))
wildfire_data <- clean_column_names(wildfire_data)  
head(wildfire_data)


## -----------------------------------------------------------------------------

summary <- summarize_wildfire_damage(wildfire_data)
print(summary)


## -----------------------------------------------------------------------------
major <- flag_major_incidents(wildfire_data)
head(major)


## -----------------------------------------------------------------------------
inspect_data(wildfire_data)


## -----------------------------------------------------------------------------
plot_county_loss_map(wildfire_data)


