-- 5. List the order id, ship name, ship address, and shipping company name of 
-- every order that shipped to Germany. 

USE northwind;
SELECT OrderID, ShipName, ShipAddress, CompanyName, ShipCountry
FROM orders
JOIN shippers
ON orders.ShipVia = shippers.ShipperID
WHERE ShipCountry = 'Germany'

-- SELECT column1, columns2, ... 
-- FROM table1 
-- JOIN table2  
-- ON table1.column-name = table2.column-name;