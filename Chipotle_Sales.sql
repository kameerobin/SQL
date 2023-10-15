SELECT * 
FROM Chipotle_Sales

--Which was the most-ordered item? 
--For the most-ordered item, how many items were ordered?
SELECT TOP 1 item_name, quantity
FROM Chipotle_Sales
ORDER BY quantity DESC;

--What was the most ordered item in the choice_description column?
SELECT TOP 1 choice_description, item_name
FROM Chipotle_Sales
ORDER BY choice_description DESC;

--How many items were ordered in total?
SELECT COUNT(item_name)
FROM Chipotle_Sales;

--Turn the item price into a float
SELECT CAST(item_price as float)
FROM Chipotle_Sales;

--How much was the revenue for the period in the dataset?
SELECT SUM(item_price) as rev
FROM Chipotle_Sales; 

--How many orders were made in the period?
SELECT COUNT(quantity)
FROM Chipotle_Sales;

--What is the average revenue amount per order?
SELECT AVG(item_price)
FROM Chipotle_Sales;

--How many different items are sold?
SELECT COUNT(DISTINCT item_name)
FROM Chipotle_Sales;