SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    ROUND(SUM(price), 2) AS total_sales_revenue,
    ROUND(AVG(price), 2) AS avg_item_price,
    ROUND(SUM(total_item_value), 2) AS gross_revenue
FROM sales_fact;
