-- Create OrderStatus table
CREATE TABLE OrderStatus (
    StatusID INT PRIMARY KEY IDENTITY(1,1),
    StatusName VARCHAR(20) NOT NULL,
    Description VARCHAR(100),
    IsActive BIT DEFAULT 1
);

-- Insert standard statuses
INSERT INTO OrderStatus (StatusName, Description)
VALUES
('Pending', 'Order placed but not processed yet'),
('Processing', 'Order is being prepared'),
('Completed', 'Order delivered successfully'),
('Cancelled', 'Order was cancelled'),
('On Hold', 'Order temporarily delayed');


-- Add pending orders for each agent (3 per agent = 30 pending orders)
INSERT INTO Orders (AgentID, OrderDate, TotalAmount, StatusID, DeliveryDate)
VALUES
-- Agent 1 - 3 pending orders
(1, '2024-02-12', 13500.00, 1, NULL),
(1, '2024-02-13', 9800.00, 1, NULL),
(1, '2024-02-14', 17500.00, 1, NULL),

-- Agent 2 - 3 pending orders
(2, '2024-02-12', 14200.00, 1, NULL),
(2, '2024-02-13', 8500.00, 1, NULL),
(2, '2024-02-14', 19500.00, 1, NULL),

-- Agent 3 - 3 pending orders
(3, '2024-02-12', 12800.00, 1, NULL),
(3, '2024-02-13', 9200.00, 1, NULL),
(3, '2024-02-14', 18200.00, 1, NULL),

-- Agent 4 - 3 pending orders
(4, '2024-02-12', 11500.00, 1, NULL),
(4, '2024-02-13', 7800.00, 1, NULL),
(4, '2024-02-14', 16800.00, 1, NULL),

-- Agent 5 - 3 pending orders
(5, '2024-02-12', 13800.00, 1, NULL),
(5, '2024-02-13', 8200.00, 1, NULL),
(5, '2024-02-14', 19200.00, 1, NULL),

-- Agent 6 - 3 pending orders
(6, '2024-02-12', 12500.00, 1, NULL),
(6, '2024-02-13', 8900.00, 1, NULL),
(6, '2024-02-14', 17800.00, 1, NULL),

-- Agent 7 - 3 pending orders
(7, '2024-02-12', 14800.00, 1, NULL),
(7, '2024-02-13', 7600.00, 1, NULL),
(7, '2024-02-14', 18500.00, 1, NULL),

-- Agent 8 - 3 pending orders
(8, '2024-02-12', 13200.00, 1, NULL),
(8, '2024-02-13', 9100.00, 1, NULL),
(8, '2024-02-14', 17200.00, 1, NULL),

-- Agent 9 - 3 pending orders
(9, '2024-02-12', 14200.00, 1, NULL),
(9, '2024-02-13', 8400.00, 1, NULL),
(9, '2024-02-14', 18800.00, 1, NULL),

-- Agent 10 - 3 pending orders
(10, '2024-02-12', 12800.00, 1, NULL),
(10, '2024-02-13', 8800.00, 1, NULL),
(10, '2024-02-14', 19500.00, 1, NULL);

-- Add cancelled orders for each agent (2 per agent = 20 cancelled orders)
INSERT INTO Orders (AgentID, OrderDate, TotalAmount, StatusID, DeliveryDate)
VALUES
-- Agent 1 - 2 cancelled orders
(1, '2024-01-10', 10500.00, 4, NULL),
(1, '2024-01-20', 7800.00, 4, NULL),

-- Agent 2 - 2 cancelled orders
(2, '2024-01-11', 11500.00, 4, NULL),
(2, '2024-01-21', 8200.00, 4, NULL),

-- Agent 3 - 2 cancelled orders
(3, '2024-01-12', 12500.00, 4, NULL),
(3, '2024-01-22', 8500.00, 4, NULL),

-- Agent 4 - 2 cancelled orders
(4, '2024-01-13', 9800.00, 4, NULL),
(4, '2024-01-23', 7200.00, 4, NULL),

-- Agent 5 - 2 cancelled orders
(5, '2024-01-14', 13500.00, 4, NULL),
(5, '2024-01-24', 8800.00, 4, NULL),

-- Agent 6 - 2 cancelled orders
(6, '2024-01-15', 12800.00, 4, NULL),
(6, '2024-01-25', 9200.00, 4, NULL),

-- Agent 7 - 2 cancelled orders
(7, '2024-01-16', 14200.00, 4, NULL),
(7, '2024-01-26', 7800.00, 4, NULL),

-- Agent 8 - 2 cancelled orders
(8, '2024-01-17', 11800.00, 4, NULL),
(8, '2024-01-27', 8500.00, 4, NULL),

-- Agent 9 - 2 cancelled orders
(9, '2024-01-18', 13200.00, 4, NULL),
(9, '2024-01-28', 9100.00, 4, NULL),

-- Agent 10 - 2 cancelled orders
(10, '2024-01-19', 12500.00, 4, NULL),
(10, '2024-01-29', 8400.00, 4, NULL);

-- Add order details for the new pending and cancelled orders
-- We'll add details for orders starting from ID 81 (since we already had 80)

DECLARE @orderID INT = 81; -- Start from first new order
DECLARE @maxOrderID INT = 130; -- We added 50 new orders (30 pending + 20 cancelled)

WHILE @orderID <= @maxOrderID
BEGIN
    -- Each order gets 2-4 products
    DECLARE @numProducts INT = FLOOR(RAND()*3) + 2;
    DECLARE @prodCounter INT = 0;
    
    WHILE @prodCounter < @numProducts
    BEGIN
        DECLARE @prodID INT = FLOOR(RAND()*7) + 1;
        DECLARE @qty INT = FLOOR(RAND()*5) + 1;
        DECLARE @price DECIMAL(10,2);
        
        -- Get product price
        SELECT @price = Price FROM Products WHERE ProductID = @prodID;
        
        -- Insert order detail
        INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
        VALUES (@orderID, @prodID, @qty, @price);
        
        SET @prodCounter = @prodCounter + 1;
    END
    
    -- Update order total
    UPDATE Orders 
    SET TotalAmount = (
        SELECT SUM(Quantity * UnitPrice) 
        FROM OrderDetails 
        WHERE OrderID = @orderID
    )
    WHERE OrderID = @orderID;
    
    SET @orderID = @orderID + 1;
END


-- Add a few orders with other statuses for variety
-- 2 Processing orders per agent
INSERT INTO Orders (AgentID, OrderDate, TotalAmount, StatusID, DeliveryDate)
VALUES
(1, '2024-02-11', 14200.00, 2, '2024-02-12'),
(1, '2024-02-10', 9800.00, 2, '2024-02-11'),
(2, '2024-02-11', 12800.00, 2, '2024-02-12'),
(2, '2024-02-10', 10500.00, 2, '2024-02-11'),
(3, '2024-02-11', 13800.00, 2, '2024-02-12'),
(3, '2024-02-10', 9200.00, 2, '2024-02-11');

-- 1 On Hold order per agent
INSERT INTO Orders (AgentID, OrderDate, TotalAmount, StatusID, DeliveryDate)
VALUES
(1, '2024-02-09', 12500.00, 5, NULL),
(2, '2024-02-09', 11800.00, 5, NULL),
(3, '2024-02-09', 13500.00, 5, NULL),
(4, '2024-02-09', 9800.00, 5, NULL),
(5, '2024-02-09', 14200.00, 5, NULL);

-- Add order details for these new orders
-- Continue from where we left off
DECLARE @newOrderID INT = 131; -- Start after the previous inserts
DECLARE @newMaxOrderID INT = 143; -- We added 12 more orders

WHILE @newOrderID <= @newMaxOrderID
BEGIN
    DECLARE @productsCount INT = FLOOR(RAND()*3) + 2;
    DECLARE @counter INT = 0;
    
    WHILE @counter < @productsCount
    BEGIN
        DECLARE @pID INT = FLOOR(RAND()*7) + 1;
        DECLARE @quantity INT = FLOOR(RAND()*5) + 1;
        DECLARE @unitPrice DECIMAL(10,2);
        
        SELECT @unitPrice = Price FROM Products WHERE ProductID = @pID;
        
        INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
        VALUES (@newOrderID, @pID, @quantity, @unitPrice);
        
        SET @counter = @counter + 1;
    END
    
    -- Update order total
    UPDATE Orders 
    SET TotalAmount = (
        SELECT SUM(Quantity * UnitPrice) 
        FROM OrderDetails 
        WHERE OrderID = @newOrderID
    )
    WHERE OrderID = @newOrderID;
    
    SET @newOrderID = @newOrderID + 1;
END
