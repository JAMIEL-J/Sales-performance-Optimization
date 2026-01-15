-- Row counts
SELECT 'orders' AS table_name, COUNT(*) FROM orders
UNION ALL
SELECT 'order_items', COUNT(*) FROM order_items
UNION ALL
SELECT 'customers', COUNT(*) FROM customers
UNION ALL
SELECT 'sellers', COUNT(*) FROM sellers
UNION ALL
SELECT 'products', COUNT(*) FROM products;

-- Check delivered orders
SELECT order_status, COUNT(*) 
FROM orders
GROUP BY order_status;
