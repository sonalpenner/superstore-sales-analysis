-- ================================================
-- Superstore Sales Performance Analysis
-- Author: Sonal Penner
-- Database: PostgreSQL
-- ================================================


-- Query 1: Regional Sales, Profit, and Margin
-- Finding: Central region has the weakest margin (7.92%)
-- despite being the 3rd largest revenue contributor

SELECT 
    "Region",
    ROUND(SUM("Sales")::numeric, 2) AS total_sales,
    ROUND(SUM("Profit")::numeric, 2) AS total_profit,
    ROUND((SUM("Profit") / SUM("Sales") * 100)::numeric, 2) AS profit_margin_pct
FROM superstore
GROUP BY "Region"
ORDER BY profit_margin_pct DESC;


-- Query 2: Category and Region Breakdown
-- Finding: Central Furniture is unprofitable (-1.75% margin)
-- root cause of Central's underperformance

SELECT 
    "Category",
    "Region",
    ROUND(SUM("Sales")::numeric, 2) AS total_sales,
    ROUND(SUM("Profit")::numeric, 2) AS total_profit,
    ROUND((SUM("Profit") / SUM("Sales") * 100)::numeric, 2) AS profit_margin_pct
FROM superstore
GROUP BY "Category", "Region"
ORDER BY "Category", profit_margin_pct DESC;


-- Query 3: Monthly Sales Trend
-- Finding: Strong Q4 seasonality every year;
-- consistent year-over-year sales growth 2014-2017

SELECT 
    EXTRACT(YEAR FROM "Order Date"::date) AS year,
    EXTRACT(MONTH FROM "Order Date"::date) AS month,
    ROUND(SUM("Sales")::numeric, 2) AS total_sales,
    ROUND(SUM("Profit")::numeric, 2) AS total_profit
FROM superstore
GROUP BY year, month
ORDER BY year, month ASC;


-- Query 4: Customer Segment Analysis
-- Finding: Consumer drives volume; Home Office
-- has the strongest margin (14.03%)

SELECT 
    "Segment",
    ROUND(SUM("Sales")::numeric, 2) AS total_sales,
    ROUND(SUM("Profit")::numeric, 2) AS total_profit,
    ROUND((SUM("Profit") / SUM("Sales") * 100)::numeric, 2) AS profit_margin_pct,
    COUNT(DISTINCT "Customer ID") AS customer_count
FROM superstore
GROUP BY "Segment"
ORDER BY total_sales DESC;