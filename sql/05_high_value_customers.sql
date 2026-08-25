-- Business Question:
-- Which customers have the highest average item price across their purchases?

SELECT
    o.customer_id,
    COUNT(*) AS order_item_count,
    ROUND(AVG(oi.price), 2) AS average_item_price
FROM olist_order_items AS oi
JOIN olist_orders AS o
    ON o.order_id = oi.order_id
GROUP BY o.customer_id
ORDER BY average_item_price DESC
LIMIT 10;
