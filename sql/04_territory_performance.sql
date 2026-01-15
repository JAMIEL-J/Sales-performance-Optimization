
-- Revenue by customer state
SELECT
    customer_state,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(price), 2) AS revenue
FROM sales_fact
GROUP BY customer_state
ORDER BY revenue DESC;

-- Revenue by seller state
SELECT
    seller_state,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(price), 2) AS revenue
FROM sales_fact
GROUP BY seller_state
ORDER BY revenue DESC;

-- Seller performance summary
SELECT
    seller_id,
    seller_state,
    COUNT(DISTINCT order_id) AS orders,
    ROUND(SUM(price), 2) AS revenue,
    ROUND(AVG(price), 2) AS avg_order_value
FROM sales_fact
GROUP BY seller_id, seller_state
HAVING COUNT(DISTINCT order_id) >= 10
ORDER BY revenue DESC;
