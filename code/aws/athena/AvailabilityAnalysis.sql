-- Total records:
SELECT COUNT(*) FROM project_analysis.availability_data;

-- Unique brands:
SELECT DISTINCT BRAND FROM project_analysis.availability_data;

-- Average review rating by brand:
SELECT BRAND, AVG(REVIEW_RATING) AS avg_rating
FROM project_analysis.availability_data
GROUP BY BRAND
ORDER BY avg_rating DESC
LIMIT 10;

-- Count of products per availability group:
SELECT AVAILABILITY, COUNT(*) AS count
FROM project_analysis.availability_data
GROUP BY AVAILABILITY
ORDER BY count DESC;

-- Use window functions to rank brands
SELECT BRAND, AVG(REVIEW_RATING) AS avg_rating,
       RANK() OVER (ORDER BY AVG(REVIEW_RATING) DESC) AS rank
FROM project_analysis.availability_data
GROUP BY BRAND

-- List products with a review rating above 4.5:
SELECT PRODUCT_NAME, BRAND, REVIEW_RATING
FROM project_analysis.availability_data
WHERE REVIEW_RATING > 4.5
ORDER BY REVIEW_RATING DESC;

