-- How do discounts impact sales volume and revenue?

SELECT 
    CASE 
        WHEN discount_pct < 10 THEN 'Low (0–9%)'
        WHEN discount_pct BETWEEN 10 AND 25 THEN 'Medium (10–25%)'
        WHEN discount_pct BETWEEN 26 AND 50 THEN 'High (26–50%)'
        ELSE 'Very High (51%+)'
    END AS discount_range,
    COUNT(*) AS transactions,
    ROUND(SUM(final_price_usd)::numeric, 2) AS total_revenue_usd
FROM ecommerce_usd
GROUP BY discount_range
ORDER BY total_revenue_usd DESC;