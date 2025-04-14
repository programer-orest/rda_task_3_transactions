-- Use our database
USE ShopDB; 

-- Some data should be created outside the transaction (here)

-- Start the transaction 
START TRANSACTION; 
UPDATE OrderItems SET Count = 1 WHERE ProductID = 1; 
UPDATE Orders SET DATE = '2023-01-01' WHERE ID = 1;
UPDATE Products SET WarehouseAmount = WarehouseAmount - 1 WHERE ID = 1;
COMMIT; 