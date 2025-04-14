-- Use our database
USE ShopDB; 

-- Some data should be created outside the transaction (here)

-- Start the transaction 
START TRANSACTION; 
INSERT OrderItems SET Count = 1 AND ProductID = 1; 
INSERT Orders SET DATE = '2023-01-01';
INSERT Products SET WarehouseAmount = WarehouseAmount - 1;
COMMIT; 