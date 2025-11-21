-- 2. List the product id, product name, unit price and supplier name of all 
-- products that cost more than $75.  Order by product name. 

USE northwind;
SELECT ProductID, ProductName, UnitPrice, ContactName
FROM products
JOIN suppliers
ON products.SupplierID = suppliers.SupplierID
WHERE UnitPrice > 75
ORDER BY ProductName

-- SELECT column1, columns2, ... 
-- FROM table1 
-- JOIN table2  
-- ON table1.column-name = table2.column-name;