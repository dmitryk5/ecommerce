-- Which product categories as most popular among users? 

SELECT 
    category,
    COUNT(DISTINCT user_id) AS unique_customers,
    ROUND(SUM(final_price_usd)::numeric, 2) AS total_revenue_usd
FROM ecommerce_usd
GROUP BY category
ORDER BY unique_customers DESC;
