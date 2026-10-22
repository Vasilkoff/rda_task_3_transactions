
USE ShopDB;

SELECT * FROM Customers;

INSERT INTO Orders(CustomerID, Date)
    VALUES(1, CURDATE());

START TRANSACTION;
SELECT WarehouseAmount FROM Products WHERE ID = 1 FOR UPDATE;
INSERT INTO OrderItems(OrderID, ProductID, Count)
    VALUES(1,1,1);

UPDATE Products SET WarehouseAmount = WarehouseAmount - 1 WHERE ID = 1;

COMMIT