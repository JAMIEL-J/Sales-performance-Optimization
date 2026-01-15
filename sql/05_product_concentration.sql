SELECT
    product_category_name,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(price), 2) AS revenue
FROM sales_fact
GROUP BY product_category_name
ORDER BY revenue DESC;
