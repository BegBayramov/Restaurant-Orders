SELECT
    EXTRACT(MONTH FROM order_date) AS month_number,
    TO_CHAR(order_date, 'Month') AS month,
    COUNT(DISTINCT order_id) AS total_orders
FROM order_details
GROUP BY month_number, month
ORDER BY month_number;