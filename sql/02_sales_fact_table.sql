DROP TABLE IF EXISTS sales_fact;

CREATE TABLE sales_fact AS
SELECT
    o.order_id,
    o.customer_id,
    c.customer_state,
    oi.product_id,
    p.product_category_name,
    oi.seller_id,
    s.seller_state,
    oi.price,
    oi.freight_value,
    (oi.price + oi.freight_value) AS total_item_value,
    o.order_purchase_timestamp
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON oi.product_id = p.product_id
JOIN sellers s ON oi.seller_id = s.seller_id
WHERE o.order_status = 'delivered';
