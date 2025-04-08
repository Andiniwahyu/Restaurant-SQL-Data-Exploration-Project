--- DATA EXPLORATION FROM ORDER DETAILS TABLE ---

-- 1.Display the order_details table.
SELECT * FROM order_details;

-- 2.Determine the date range covered by the table.
SELECT MIN(order_date), MAX(order_date) FROM order_details;

-- 3.Count the number of orders placed within this date range.
SELECT COUNT(DISTINCT order_id) AS num_orders FROM order_details;

-- 4.Find the total number of items ordered in this period.
SELECT COUNT(item_id) FROM order_details;

-- 5.Identify the orders with the highest item count.
SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;

-- 6.Calculate how many orders included more than 12 items.
SELECT COUNT(order_id) AS num_orders FROM
(SELECT order_id, COUNT(item_id) FROM order_details
GROUP BY order_id
HAVING COUNT(item_id) > 12) AS o6;
