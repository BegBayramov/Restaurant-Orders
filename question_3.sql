/*Were there certain times that had more or less orders?*/ 

SELECT o.order_date,EXTRACT(HOUR FROM order_time) AS hour_order, COUNT(o.item_id) AS quantity_order
FROM order_details AS o 
INNER JOIN menu_items AS m 
ON o.item_id = m.menu_item_id 
GROUP BY EXTRACT(HOUR FROM order_time),o.order_date
ORDER BY  o.order_date , quantity_order DESC
