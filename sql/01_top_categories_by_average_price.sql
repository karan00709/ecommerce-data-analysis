-- Business Question:
-- Which product categories have the highest average item price?

SELECT
    p.product_category_name,
    ROUND(AVG(oi.price), 2) AS average_item_price
FROM olist_order_items AS oi
JOIN olist_products AS p
    ON oi.product_id = p.product_id
WHERE p.product_category_name IS NOT NULL
GROUP BY p.product_category_name
ORDER BY average_item_price DESC
LIMIT 10;
