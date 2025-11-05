-- Conversion from Rupee to USD to make it easier to understand for US viewers 

CREATE TABLE ecommerce_usd AS
SELECT
    user_id,
    product_id,
    category,
    price_rs,
    ROUND((price_rs / 83)::numeric, 2) AS price_usd,
    discount_pct,
    final_price_rs,
    ROUND((final_price_rs / 83)::numeric, 2) AS final_price_usd,
    payment_method,
    purchase_date
FROM ecommerce_clean;
