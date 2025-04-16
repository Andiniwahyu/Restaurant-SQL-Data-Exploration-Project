--- DATA EXPLORATION FROM MENU ITEMS TABLE ---

-- 1.Display the menu_items table
SELECT * FROM menu_items;

-- 2.Count the total number of items on the menu
SELECT COUNT(*) FROM menu_items;

-- 3.Identify the least and most expensive items on the menu
SELECT * FROM menu_items
ORDER BY price;

SELECT * FROM menu_items
ORDER BY price DESC;

-- 4.How many Italian dishes are listed on the menu?
SELECT COUNT(*) FROM menu_items
WHERE category = 'Italian';

-- 5.Find the cheapest and most expensive Italian dishes
SELECT * FROM menu_items
WHERE category = 'Italian'
ORDER BY price;

SELECT * FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC;

-- 6.Determine the number of dishes in each category
SELECT category, COUNT(item_name) AS num_dishes FROM menu_items
GROUP BY category;

-- 7.What is the average price of dishes within each category?
SELECT category, AVG(price) AS avg_price FROM menu_items
GROUP BY category
ORDER by avg_price DESC;
