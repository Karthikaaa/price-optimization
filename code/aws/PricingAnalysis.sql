-- Check Price Distribution:
SELECT BRAND, AVG(PRICE_CURRENT) AS avg_price
FROM project_analysis.pricing_data
GROUP BY BRAND
ORDER BY avg_price DESC
LIMIT 10;

-- Identify Discounted Products:
SELECT PRODUCT_NAME, PRICE_RETAIL, PRICE_CURRENT, PROMOTION
FROM project_analysis.pricing_data
WHERE PRICE_RETAIL > PRICE_CURRENT;

-- Identify Top 10 Most Expensive Products
SELECT PRODUCT_NAME, BRAND, PRICE_RETAIL, PRICE_CURRENT
FROM project_analysis.pricing_data
ORDER BY PRICE_RETAIL DESC
LIMIT 10;

-- Calculate Discount Percentage for Each Product
SELECT PRODUCT_NAME, BRAND, 
       PRICE_RETAIL, 
       PRICE_CURRENT, 
       ROUND(((PRICE_RETAIL - PRICE_CURRENT) / PRICE_RETAIL) * 100, 2) AS discount_percentage
FROM project_analysis.pricing_data
WHERE PRICE_RETAIL > PRICE_CURRENT
ORDER BY discount_percentage DESC
LIMIT 10;

-- Average Price by Department
SELECT DEPARTMENT, 
       AVG(PRICE_CURRENT) AS avg_price_current, 
       AVG(PRICE_RETAIL) AS avg_price_retail
FROM project_analysis.pricing_data
GROUP BY DEPARTMENT
ORDER BY avg_price_current DESC;

-- Count of Products by Brand
SELECT BRAND, COUNT(*) AS product_count
FROM project_analysis.pricing_data
GROUP BY BRAND
ORDER BY product_count DESC
LIMIT 10;

-- Revenue Loss Due to Discounts
SELECT BRAND, 
       SUM(PRICE_RETAIL - PRICE_CURRENT) AS revenue_loss
FROM project_analysis.pricing_data
WHERE PRICE_RETAIL > PRICE_CURRENT
GROUP BY BRAND
ORDER BY revenue_loss DESC
LIMIT 10;

-- Analyze Price Elasticity of Demand
-- This assumes you have data on price changes over time. A basic query can calculate the percentage price change per product:
SELECT PRODUCT_NAME, BRAND, 
       ROUND(((PRICE_CURRENT - PRICE_RETAIL) / PRICE_RETAIL) * 100, 2) AS price_change_percentage
FROM project_analysis.pricing_data
WHERE PRICE_RETAIL > 0
ORDER BY price_change_percentage ASC
LIMIT 10;



