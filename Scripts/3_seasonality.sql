-- Which months show highest sales? What cateogies dominate those months?

SELECT 
    TO_CHAR(TO_DATE(purchase_date, 'DD-MM-YYYY'), 'YYYY-MM') AS month,
    category,
    ROUND(SUM(final_price_usd)::numeric, 2) AS total_revenue_usd
FROM ecommerce_usd
GROUP BY month, category
ORDER BY month, total_revenue_usd DESC;