-- Business Question:
-- Which sellers generate the highest item revenue, and how do their
-- average prices and review scores compare?

SELECT
    oi.seller_id,
    ROUND(SUM(oi.price), 2) AS total_item_revenue,
    ROUND(AVG(oi.price), 2) AS average_item_price,
    ROUND(AVG(r.review_score), 2) AS average_review_score
FROM olist_order_items AS oi
JOIN olist_order_reviews AS r
    ON r.order_id = oi.order_id
GROUP BY oi.seller_id
ORDER BY total_item_revenue DESC
LIMIT 10;
