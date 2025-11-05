-- Which product categories generate the most value after discount?

SELECT
	category,
	price_usd,
	discount_pct,
	final_price_usd
FROM ecommerce_usd;

SELECT 
    category,
    ROUND(SUM(final_price_usd)::numeric, 2) AS total_revenue_usd,
    ROUND(AVG(discount_pct)::numeric, 2) AS avg_discount_pct
FROM ecommerce_usd
GROUP BY category
ORDER BY total_revenue_usd DESC;

-- Clothing: High Revenue, Lowest Discounts
-- Books AND Home & Kitchen are good performers
-- Electronics are lowest despite high discounts