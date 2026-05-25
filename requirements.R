# ============================================================
# requirements.R
# Macroeconomic Factors and Insurance Premiums in Kenya
# Authors: Whitney Kemuma
# Supervisor: Dr Cynthia Mwende
# Kisii University — Department of Mathematics and Actuarial Science
# 2025
#
# Run this file once to install all required packages.
# In RStudio: open this file and click Source
# Or run: source("requirements.R")
# ============================================================

# ── Helper function ───────────────────────────────────────────
# Installs a package only if it is not already installed
install_if_missing <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    message(paste("Installing:", pkg))
    install.packages(pkg, dependencies = TRUE,
                     repos = "https://cloud.r-project.org")
  } else {
    message(paste("Already installed:", pkg))
  }
}

# ── Core data science ─────────────────────────────────────────
install_if_missing("ggplot2")       # Data visualisation
install_if_missing("dplyr")         # Data manipulation
install_if_missing("scales")        # Number formatting (comma, percent)

# ── Time series modelling ─────────────────────────────────────
install_if_missing("forecast")      # ARIMAX modelling and forecasting
install_if_missing("tseries")       # ADF stationarity test
install_if_missing("TSA")           # Additional time series tools
install_if_missing("lmtest")        # Ljung-Box and Granger causality tests

# ── Regression diagnostics ────────────────────────────────────
install_if_missing("car")           # VIF multicollinearity test

# ── Visualisation ─────────────────────────────────────────────
install_if_missing("corrplot")      # Correlation matrix heatmap
install_if_missing("gridExtra")     # Multi-panel plot layouts

# ── Report generation ─────────────────────────────────────────
install_if_missing("knitr")         # Dynamic report generation (.Rmd)
install_if_missing("kableExtra")    # Enhanced PDF table formatting
install_if_missing("rmarkdown")     # R Markdown rendering

# ── PDF output (LaTeX engine) ─────────────────────────────────
install_if_missing("tinytex")       # Lightweight LaTeX for PDF knitting

# Install TinyTeX LaTeX distribution if not already present
if (!tinytex::is_tinytex()) {
  message("Installing TinyTeX (LaTeX engine for PDF output)...")
  tinytex::install_tinytex()
} else {
  message("TinyTeX already installed.")
}

# ── Confirmation ──────────────────────────────────────────────
message("
========================================================
  All packages installed successfully.
  You are ready to knit the project chapters to PDF.

  Run chapters in this order:
    1. scripts/Chapter_0_Research_Foundation.Rmd
    2. scripts/Chapter_1_Data.Rmd
    3. scripts/Chapter_2_EDA.Rmd
    4. scripts/Chapter_3_ARIMAX.Rmd
    5. scripts/Chapter_4_Regression.Rmd
    6. scripts/Chapter_5_Conclusions.Rmd

  Authors    : Whitney Kemuma
  Supervisor : Dr Cynthia Mwende
  Institution: Kisii University
========================================================
")