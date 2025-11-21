-- 3. List the product id, product name, unit price, category name, and supplier 
-- name of every product.  Order by product name. 

USE northwind;
SELECT ProductID, ProductName, UnitPrice, CategoryName, SupplierID
FROM products
JOIN categories
ON products.CategoryID = categories.CategoryID 
ORDER BY ProductName

-- SELECT column1, columns2, ... 
-- FROM table1 
-- JOIN table2  
-- ON table1.column-name = table2.column-name;