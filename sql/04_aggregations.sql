-- =====================================================
-- Aggregation Queries
-- Description: Summarize sales data for analysis
-- =====================================================

-- Total Sales by Region
SELECT
    o.region,
    SUM(oi.sales) AS total_sales
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY o.region
ORDER BY total_sales DESC;


-- Total Sales by Customer
SELECT
    c.customer_name,
    SUM(oi.sales) AS total_sales
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY c.customer_name
ORDER BY total_sales DESC;