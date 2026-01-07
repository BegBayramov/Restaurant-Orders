/*What were the least and most ordered items? 
    What categories were they in?*/ 

SELECT m.item_name,m.category, COUNT(o.item_id) AS quantity_order
FROM order_details AS o
INNER JOIN menu_items AS m
ON o.item_id = m.menu_item_id 
GROUP BY  m.item_name,m.category 
ORDER BY quantity_order DESC