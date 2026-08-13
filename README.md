# E-Commerce Sales & Customer Analytics

> End-to-end Data Analyst portfolio project covering data importing, data quality, cleaning, exploratory analysis, SQL, visualization, KPI reporting and dashboard design.

## Executive Dashboard

| KPI | Result |
|---|---:|
| Revenue | **$167,667** |
| Profit | **$58,348** |
| Orders | **1,800** |
| Average Order Value | **$93.15** |
| Profit Margin | **34.8%** |
| Customers | **506** |

## Dashboard Visuals

The repository contains the generated charts for:

- Monthly revenue trend
- Revenue by region
- Revenue by category
- Top products by revenue
- Customer segment contribution
- Profit by category
- Revenue vs profit

## Business Questions

1. Which regions generate the most revenue?
2. Which categories and products contribute the most sales?
3. How does revenue change over time?
4. Which customer segments contribute the most value?
5. Which categories generate the strongest profit?
6. Does higher revenue consistently translate into higher profit?

## End-to-End Workflow

```text
Raw Transactions
      ↓
Data Import & Profiling
      ↓
Data Quality Checks
      ↓
Cleaning & Transformation
      ↓
Feature Engineering
      ↓
Exploratory Data Analysis
      ↓
SQL Analysis
      ↓
KPI & Trend Analysis
      ↓
Visualization / Dashboard
      ↓
Business Insights
```

## Data Quality & Cleaning

The raw portfolio dataset deliberately contains common business-data issues:

- Missing discount values
- Blank region values
- Invalid negative unit prices
- Derived revenue inconsistencies

The cleaning workflow fixes these issues by standardizing missing values, imputing missing discounts, replacing invalid unit prices with category-level medians, and recalculating revenue, profit and profit margin.

## SQL Analysis

`sql/analysis_queries.sql` contains queries for:

- Regional revenue and profit
- Category performance
- Top products
- Monthly performance
- Customer-segment performance

## Repository Structure

```text
├── data/
│   ├── sales_raw.csv
│   ├── sales_clean.csv
│   └── customers.csv
├── src/
│   └── data_cleaning.py
├── sql/
│   └── analysis_queries.sql
├── visualizations/
│   ├── monthly_revenue.png
│   ├── revenue_by_region.png
│   ├── revenue_by_category.png
│   ├── top_products.png
│   ├── customer_segments.png
│   ├── profit_by_category.png
│   └── revenue_vs_profit.png
├── dashboard/
├── results/
├── notebooks/
├── requirements.txt
└── README.md
```

## Technology Stack

**Python · Pandas · NumPy · Matplotlib · SQL · Data Cleaning · EDA · Business Analytics · Dashboard Design**

## Data Note

Because no real company sales dataset was provided, this project uses a **synthetically generated portfolio dataset** designed to model a realistic e-commerce workflow. It must not be presented as confidential or real company performance data.

## Author

**Nithesh S**  
GitHub: https://github.com/nitheshstech-dev
