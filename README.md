# Superstore Sales Performance Analysis

## Overview
Analysis of a sample retail dataset covering 2014–2017 sales data across 
4 regions, 3 product categories, and 3 customer segments. The goal was to 
identify where the business is performing well and where opportunities exist 
to improve profitability.

## Tools
- **PostgreSQL** — data storage and querying
- **Power BI** — dashboard and visualization
- **GitHub** — version control and portfolio hosting

## Dataset
Sample Superstore retail dataset (9,994 orders, 2014–2017)  
Source: [Kaggle](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)

## Dashboard
[View the live interactive dashboard](https://app.powerbi.com/groups/me/reports/20635891-350b-4ced-8bb4-e2304a8eebfa/a3db587403971ab18dc8?experience=power-bi)

## Key Findings

**Regional performance**
- West and East regions lead in both sales volume and profit margin (14.94% and 13.48%)
- Central region underperforms on profitability (7.92% margin) despite being the 
third-largest revenue contributor

**Root cause: Central Furniture**
- Central region's margin problem is driven almost entirely by Furniture, which 
operates at a negative margin (-1.75%) — the only region/category combination 
losing money
- Central Technology (19.77%) and Office Supplies (5.32%) are healthy, indicating 
the issue is product-specific, not region-wide

**Seasonality**
- Strong Q4 sales spike every year, with November consistent
