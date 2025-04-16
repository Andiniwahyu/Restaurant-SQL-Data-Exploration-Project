--- CUSTOMER BEHAVIOUR ANALYSIS ---

-- 1.Merge the menu_items and order_details tables into a single dataset.
SELECT * FROM menu_items;
SELECT * FROM order_details;

SELECT * 
FROM order_details od
LEFT JOIN menu_items mi 
ON od.item_id = mi.menu_item_id;

-- 2.Identify the least and most frequently ordered items. Which categories do they belong to?
SELECT item_name, category, COUNT(order_details_id) AS num_orders
FROM order_details od
INNER JOIN menu_items mi 
ON od.item_id = mi.menu_item_id
GROUP BY item_name, category
ORDER BY num_orders;

SELECT item_name, category, COUNT(order_details_id) AS num_orders
FROM order_details od
INNER JOIN menu_items mi 
ON od.item_id = mi.menu_item_id
GROUP BY item_name, category
ORDER BY num_orders DESC;

SELECT category, COUNT(order_details_id) AS num_orders
FROM order_details od
INNER JOIN menu_items mi 
ON od.item_id = mi.menu_item_id
GROUP BY category
ORDER BY num_orders DESC;
-- 3.Determine the top 5 orders with the highest spending.
SELECT order_id, SUM(price) AS total_spend
FROM order_details od
INNER JOIN menu_items mi 
ON od.item_id = mi.menu_item_id
GROUP BY order_id
ORDER BY total_spend DESC
LIMIT 5;

-- 4.Analyze the details of the order with the highest total cost. 
SELECT *
FROM order_details od
INNER JOIN menu_items mi 
ON od.item_id = mi.menu_item_id
WHERE order_id = '440';

SELECT category, COUNT(item_id) AS num_items
FROM order_details od
INNER JOIN menu_items mi 
ON od.item_id = mi.menu_item_id
WHERE order_id = '440'
GROUP BY category;

-- 5.Show the details of the top 5 highest-spending orders. 
SELECT category, COUNT(item_id) AS num_items
FROM order_details od
INNER JOIN menu_items mi 
ON od.item_id = mi.menu_item_id
WHERE order_id IN (440, 2075 ,1975 ,330 ,2675)
GROUP BY category;

SELECT order_id, category, COUNT(item_id) AS num_items
FROM order_details od
INNER JOIN menu_items mi 
ON od.item_id = mi.menu_item_id
WHERE order_id IN (440, 2075 ,1975 ,330 ,2675)
GROUP BY order_id, category;

SELECT category, AVG(price)
FROM order_details od
INNER JOIN menu_items mi 
ON od.item_id = mi.menu_item_id
WHERE order_id IN (440, 2075 ,1975 ,330 ,2675)
GROUP BY category;
