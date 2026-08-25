-- Business Question:
-- Which Brazilian states have the largest customer bases and highest order volumes?

SELECT
    c.customer_state,
    COUNT(DISTINCT c.customer_id) AS unique_customers,
    COUNT(DISTINCT o.order_id) AS unique_orders
FROM olist_customers AS c
JOIN olist_orders AS o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_state
ORDER BY unique_orders DESC
LIMIT 10;
