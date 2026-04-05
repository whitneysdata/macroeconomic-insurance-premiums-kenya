![R](https://img.shields.io/badge/R-4.x-blue?style=flat-square&logo=r)
![RMarkdown](https://img.shields.io/badge/RMarkdown-PDF-orange?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)
![Status](https://img.shields.io/badge/Status-Complete-brightgreen?style=flat-square)
![Institution](https://img.shields.io/badge/Institution-Kisii%20University-purple?style=flat-square)

---

# Modelling the Impact of Macroeconomic Factors on Insurance Premiums in Kenya
## Using Time Series Analysis and Multiple Linear Regression

> **Authors:** Whitney Kemuma & Shebunah Nyairabu
> **Supervisor:** Dr Cynthia Mwende
> **Department:** Mathematics and Actuarial Science
> **Institution:** Kisii University
> **Programme:** Bachelor of Science in Actuarial Science (BACS 409)
> **Year:** 2025

---

## Abstract

Insurance premium pricing is a central challenge in the Kenyan insurance
industry, where macroeconomic volatility creates persistent uncertainty for
insurers, policymakers, and regulators. This study investigates the impact
of three key macroeconomic indicators — inflation rate, GDP growth rate, and
interest rate on comprehensive car insurance premiums in Kenya over the
period 2015 to 2024.

Two complementary modelling frameworks are employed. An ARIMAX
(AutoRegressive Integrated Moving Average with Exogenous Variables) model
captures the temporal dynamics of premium adjustment alongside macroeconomic
drivers. A Multiple Linear Regression (MLR) model quantifies the individual
and joint explanatory power of each macroeconomic factor. Formal hypothesis
testing, stationarity diagnostics, residual analysis, and multicollinearity
checks are conducted throughout.

The study finds that interest rate is the only statistically significant
predictor at the 5% significance level. Forecast projections for 2025 to
2027 suggest a continued upward trend in premiums under baseline
macroeconomic assumptions.

**Keywords:** Insurance Premiums, ARIMAX, Multiple Linear Regression,
Macroeconomic Factors, Kenya, Time Series Analysis, Forecasting

---

## Research Questions

| | Question |
|--|----------|
| **RQ1** | What are the trends and patterns in insurance premiums and macroeconomic indicators in Kenya between 2015 and 2024? |
| **RQ2** | Does the ARIMAX model effectively capture the temporal dynamics of insurance premiums and the influence of macroeconomic factors? |
| **RQ3** | Which macroeconomic factors have a statistically significant impact on insurance premiums, and in what direction? |
| **RQ4** | What are the projected insurance premium levels for 2025 to 2027 under current macroeconomic assumptions? |

---

## Project Structure

macroeconomic-insurance-premiums-kenya/
│
├── data/
│   └── insurance_data.csv          <- Dataset: Kenya insurance premiums
│                                      and macroeconomic indicators (2015-2024)
│
├── scripts/
│   ├── Chapter_0_Research_Foundation.Rmd  <- Abstract, intro, hypotheses,
│   │                                         literature review
│   ├── Chapter_1_Data.Rmd                 <- Data loading, cleaning,
│   │                                         descriptive statistics
│   ├── Chapter_2_EDA.Rmd                  <- Trend plots, correlations,
│   │                                         stationarity, Granger tests
│   ├── Chapter_3_ARIMAX.Rmd               <- ARIMAX modelling, diagnostics,
│   │                                         forecasting 2025-2027
│   ├── Chapter_4_Regression.Rmd           <- MLR, hypothesis testing,
│   │                                         VIF, LOO cross-validation
│   └── Chapter_5_Conclusions.Rmd          <- Summary, conclusions,
│                                             recommendations
│
├── plots/                          <- Saved PNG figures (generated on knit)
│
├── README.md                       <- This file
└── requirements.R                  <- All required R packages

---

## Dataset

| Variable | Role | Source | Period |
|----------|------|--------|--------|
| Insurance Premium (KES) | Dependent variable | Insurance Regulatory Authority (IRA) | 2015–2024 |
| Inflation Rate (%) | Independent variable | Kenya National Bureau of Statistics (KNBS) | 2015–2024 |
| GDP Growth Rate (%) | Independent variable | World Bank / KNBS | 2015–2024 |
| Interest Rate (%) | Independent variable | Central Bank of Kenya (CBK) | 2015–2024 |

The dataset covers annual observations for a comprehensive car insurance
policy on a vehicle valued at KES 2,000,000.

---

## Methodology

### 1. Data Preparation
Annual data from 2015 to 2024 loaded, cleaned, and validated. No missing
values. The 2020 COVID-19 contraction (-0.27% GDP) is explicitly flagged
throughout the analysis.

### 2. Exploratory Data Analysis
Individual trend plots for all four variables. Pearson correlation matrix.
Augmented Dickey-Fuller (ADF) stationarity tests. Granger causality tests.

### 3. ARIMAX Modelling
`auto.arima()` used to select optimal ARIMA(p,d,q) order. Macroeconomic
variables included as exogenous regressors. Residual diagnostics via
Ljung-Box test, ACF/PACF plots, and residual histogram.

### 4. Forecasting
Three-scenario forecast for 2025-2027:

| Scenario | Assumption |
|----------|-----------|
| Baseline | 2024 macroeconomic levels held constant |
| Optimistic | Falling inflation, rising GDP |
| Pessimistic | Rising inflation, slowing GDP |

### 5. Multiple Linear Regression
MLR model with formal hypothesis testing on individual coefficients
(t-tests) and overall model (F-test). VIF multicollinearity check.
Leave-One-Out cross-validation for predictive accuracy assessment.

---

## Key Results

| Metric | Value |
|--------|-------|
| MLR R-squared | 72.35% |
| MLR Adjusted R-squared | 58.53% |
| MLR F-test p-value | 0.04113 |
| ARIMAX MAPE | < 3% |
| Significant predictor | Interest Rate (p < 0.05) |
| Interest rate coefficient | Negative (consistent with theory) |

### Premium Forecasts (Baseline Scenario)

| Year | Forecast (KES) |
|------|---------------|
| 2025 | 35750 |
| 2026 | 35750 |
| 2027 | 35750 |

---

## How to Run

### 1. Clone the repository
```bash
git clone https://github.com/whitneysdata/macroeconomic-insurance-premiums-kenya.git
cd macroeconomic-insurance-premiums-kenya
```

### 2. Install required packages
```r
source("requirements.R")
```

### 3. Open the RProject
Double-click `macroeconomic-insurance-premiums-kenya.Rproj` to open in RStudio.

### 4. Run chapters in order
Open each `.Rmd` file from the `scripts/` folder and click **Knit → Knit to PDF**:
Chapter_0_Research_Foundation.Rmd  <- Read only, no code
Chapter_1_Data.Rmd                 <- Run first
Chapter_2_EDA.Rmd                  <- Run second
Chapter_3_ARIMAX.Rmd               <- Run third
Chapter_4_Regression.Rmd           <- Run fourth
Chapter_5_Conclusions.Rmd          <- Run fifth

> Each chapter is fully self-contained and can be knitted independently.

---

## Dependencies

| Package | Version | Purpose |
|---------|---------|---------|
| ggplot2 | >= 3.4.0 | Data visualisation |
| dplyr | >= 1.1.0 | Data manipulation |
| forecast | >= 8.21 | ARIMAX modelling and forecasting |
| tseries | >= 0.10 | ADF stationarity test |
| TSA | >= 1.3 | Time series tools |
| lmtest | >= 0.9 | Ljung-Box and Granger causality tests |
| car | >= 3.1 | VIF multicollinearity test |
| corrplot | >= 0.92 | Correlation matrix visualisation |
| knitr | >= 1.42 | Dynamic report generation |
| kableExtra | >= 1.3 | Enhanced table formatting |
| gridExtra | >= 2.3 | Multi-panel plot layout |
| scales | >= 1.2 | Number formatting |
| tinytex | >= 0.44 | LaTeX engine for PDF output |

---

## Hypotheses Tested

| Hypothesis | Variable | Decision |
|------------|----------|---------|
| H1: β_inflation = 0 | Inflation Rate | Fail to reject H0: Inflation does not have a statistically significant effect on premiums|
| H2: β_GDP = 0 | GDP Growth Rate | Fail to reject H0: GDP does not have a statistically significant effect on premiums|
| H3: β_interest = 0 | Interest Rate | Reject Ho: Interest rate has a statistically significant effect on premiums |
| H4: All β = 0 (F-test) | Overall model | reject H0: Te overall model is statistically significant |

---

## Authors and Supervision

| Role | Name |
|------|------|
| Author | Whitney Kemuma |
| Author | Shebunah Nyairabu |
| Supervisor | Dr Cynthia Mwende |
| Institution | Kisii University — School of Pure and Applied Sciences |
| Department | Mathematics and Actuarial Science |

---

## References

- Central Bank of Kenya (2023). *Monetary Policy Statement.*
  https://www.centralbank.go.ke
- EIOPA (2022). *Insurance and Inflation.*
  https://www.eiopa.europa.eu
- Insurance Regulatory Authority (2023). *Annual Industry Report.*
  https://www.ira.go.ke
- Kenya National Bureau of Statistics (2023). *Economic Survey 2023.*
  https://www.knbs.or.ke
- Box, G.E.P., & Jenkins, G.M. (1976). *Time Series Analysis.* Holden-Day.
- Frees, E.W., et al. (2014). *Predictive Modeling in Actuarial Science.*
  Cambridge University Press.

---

## License

This project is licensed under the MIT License.

---

*Submitted in partial fulfillment of the requirements for the award of the
degree of Bachelor of Science in Actuarial Science — Kisii University, 2025.*