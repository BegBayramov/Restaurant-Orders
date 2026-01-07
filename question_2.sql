/*What do the highest spend orders look like? 
     Which items did they buy and how much did they spend?*/  

WITH a AS  ( SELECT m.item_name,m.category, COUNT(m.menu_item_id) AS quantity_order, m.price
FROM menu_items AS m 
INNER JOIN order_details AS o 
ON m.menu_item_id = o.item_id 
GROUP BY m.item_name, m.price, m.category 
ORDER BY quantity_order DESC 
) 
SELECT item_name, price, quantity_order,quantity_order * price AS total_spend 
FROM a  
ORDER BY total_spend DESC