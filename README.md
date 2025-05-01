# wildvizR 🐾🔥

Welcome to **wildvizR**, a compact R package for visualizing and summarizing wildfire damage in California.  
Built by Sardys Avile-Martinez as a final project for LIS4370.  
This package transforms raw wildfire data into visual stories and actionable summaries.  
It’s perfect for students, analysts, and storytellers working with geographic and disaster-related data.

---

## 💡 What This Package Does

`wildvizR` includes reusable functions to:
- 📊 Summarize acres burned and financial loss by year
- 🚨 Flag major incidents based on damage thresholds
- 🧪 Inspect structure and missingness in data
- 🗺️ Plot county-level wildfire loss as a choropleth map

These tools help you move from raw data to meaningful insights, fast.

---

## 📦 Installation

You can install the development version of `wildvizR` from GitHub with:

```r
# You’ll need devtools installed
install.packages("devtools")
devtools::install_github("Sardys11/wildvizR")

```
---

## 📂 Loading the Data

This package includes a wildfire dataset stored in the inst/extdata folder. To load it, run:

```r
wildfire_data <- read.csv(system.file("extdata", "Cleaned_California_Wildfire_Damage.csv", package = "wildvizR"))

```

---

## 🔧 Example Usage

```r
library(wildvizR)
library(ggplot2)

# Load data
data <- read.csv(system.file("extdata", "Cleaned_California_Wildfire_Damage.csv", package = "wildvizR"))

# Summarize damage by year
summary <- summarize_wildfire_damage(data)
print(summary)

# Flag major incidents (loss > $50M)
flag_major_incidents(data)

# Visualize county-level financial loss
plot_county_loss_map(data)

```

---

## 📖 Learn More

Check out the vignette:

```r
vignette("wildvizR-usage")

```
---

## 💻 About the Author
Sardys Avile-Martinez
Data wrangler, storyteller, and lifelong learner
📖 Blog: statandanalyticscom.wordpress.com
📬 Email: sardys@usf.edu.


