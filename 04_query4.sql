-- 4. What is the product name(s) and categories of the most expensive 
-- products?  HINT:  Find the max price in a subquery and then use that in 
-- your more complex query that joins products with categories. 

USE northwind;
SELECT ProductName, CategoryName, UnitPrice
FROM products
JOIN categories
ON products.CategoryID = categories.CategoryID
WHERE UnitPrice = 
(SELECT MAX(UnitPrice)
FROM products)

-- SELECT column1, columns2, ... 
-- FROM table1 
-- JOIN table2  
-- ON table1.column-name = table2.column-name;