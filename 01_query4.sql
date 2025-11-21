-- 1. List the product id, product name, unit price and category name of all 
-- products.  Order by category name and within that, by product name. 

USE northwind;
SELECT ProductID, ProductName, UnitPrice, CategoryName
FROM products
JOIN categories
ON products.CategoryID = categories.CategoryID
ORDER BY CategoryName, ProductName

-- SELECT column1, columns2, ... 
-- FROM table1 
-- JOIN table2  
-- ON table1.column-name = table2.column-name; 