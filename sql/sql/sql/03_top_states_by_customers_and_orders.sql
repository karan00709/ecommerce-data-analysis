-- Business Question:
-- Which product categories have the highest order-item volume?

SELECT
    p.product_category_name,
    COUNT(*) AS order_item_count
FROM olist_order_items AS oi
JOIN olist_products AS p
    ON oi.product_id = p.product_id
WHERE p.product_category_name IS NOT NULL
GROUP BY p.product_category_name
ORDER BY order_item_count DESC
LIMIT 10;
