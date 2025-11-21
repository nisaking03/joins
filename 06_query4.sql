-- 6. List the order id, order date, ship name, ship address of all orders that 
-- ordered "Sasquatch Ale"?

USE northwind;
SELECT orders.OrderID, OrderDate, ShipName, ShipAddress, ProductName
FROM orders
JOIN `order details`
ON orders.OrderID = `order details`.OrderID
JOIN products
ON  products.ProductID = `order details`.ProductID
WHERE ProductName = 'Sasquatch Ale'

-- SELECT column1, columns2, ... 
-- FROM table1 
-- JOIN table2  
-- ON table1.column-name = table2.column-name;