-- Creating a new table with cleaned columns for readabily and ease of use

CREATE TABLE ecommerce_clean AS
SELECT 
    "User_ID" AS user_id,
    "Product_ID" AS product_id,
    "Category" AS category,
    "Price (Rs.)" AS price_rs,
    "Discount (%)" AS discount_pct,
    "Final_Price(Rs.)" AS final_price_rs,
    "Payment_Method" AS payment_method,
    "Purchase_Date" AS purchase_date
FROM ecommerce;