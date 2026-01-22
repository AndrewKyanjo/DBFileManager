INSERT INTO Products (ProductName, Description, Price, ProductionCost, DailyProductionCapacity)
VALUES
('Brown Bread', 'Whole wheat bread, 500g loaf', 3000.00, 1500.00, 200),
('Chapati Pack', '6 pieces of soft chapatis', 4000.00, 2000.00, 150),
('Mandazi Pack', '10 pieces of sweet mandazi', 2500.00, 1200.00, 300),
('Queen Cakes', 'Pack of 12 assorted queen cakes', 6000.00, 3000.00, 100),
('Doughnuts', '6 glazed doughnuts', 4500.00, 2200.00, 180),
('Buns', 'Pack of 8 sweet buns', 3500.00, 1800.00, 250),
('Cinnamon Rolls', '4 large cinnamon rolls', 5000.00, 2500.00, 120);


INSERT INTO Agents (FirstName, LastName, PhoneNumber, Email, Region)
VALUES
('David', 'Okello', '+256-701-123456', 'david@email.com', 'Kampala Central'),
('Sarah', 'Nakato', '+256-772-234567', 'sarah@email.com', 'Kawempe'),
('James', 'Tumusiime', '+256-703-345678', 'james@email.com', 'Makindye'),
('Grace', 'Auma', '+256-774-456789', 'grace@email.com', 'Rubaga'),
('Peter', 'Odongo', '+256-705-567890', 'peter@email.com', 'Nakawa'),
('Martha', 'Namukasa', '+256-776-678901', 'martha@email.com', 'Wakiso'),
('Robert', 'Kato', '+256-707-789012', 'robert@email.com', 'Mukono'),
('Susan', 'Nabukeera', '+256-778-890123', 'susan@email.com', 'Entebbe'),
('Thomas', 'Mwanga', '+256-709-901234', 'thomas@email.com', 'Jinja'),
('Alice', 'Kyomugisha', '+256-750-012345', 'alice@email.com', 'Mbarara');

-- First, let's create some sample orders with realistic dates
-- Orders will be from the last 3 months

-- Insert Orders (First 20 orders as example - you can run similar patterns)
INSERT INTO Orders (AgentID, OrderDate, TotalAmount, Status, DeliveryDate)
VALUES
-- Agent 1 (David Okello) - 8 orders
(1, '2024-01-15', 12000.00, 'Completed', '2024-01-16'),
(1, '2024-01-18', 8500.00, 'Completed', '2024-01-19'),
(1, '2024-01-22', 19500.00, 'Completed', '2024-01-23'),
(1, '2024-01-25', 7500.00, 'Completed', '2024-01-26'),
(1, '2024-01-29', 14000.00, 'Completed', '2024-01-30'),
(1, '2024-02-02', 11000.00, 'Completed', '2024-02-03'),
(1, '2024-02-05', 22500.00, 'Completed', '2024-02-06'),
(1, '2024-02-08', 9500.00, 'Completed', '2024-02-09'),

-- Agent 2 (Sarah Nakato) - 8 orders
(2, '2024-01-16', 13500.00, 'Completed', '2024-01-17'),
(2, '2024-01-19', 7000.00, 'Completed', '2024-01-20'),
(2, '2024-01-23', 18500.00, 'Completed', '2024-01-24'),
(2, '2024-01-26', 6500.00, 'Completed', '2024-01-27'),
(2, '2024-01-30', 15500.00, 'Completed', '2024-01-31'),
(2, '2024-02-03', 12500.00, 'Completed', '2024-02-04'),
(2, '2024-02-06', 20500.00, 'Completed', '2024-02-07'),
(2, '2024-02-09', 8800.00, 'Completed', '2024-02-10'),

-- Agent 3 (James Tumusiime) - 8 orders
(3, '2024-01-17', 16000.00, 'Completed', '2024-01-18'),
(3, '2024-01-20', 9200.00, 'Completed', '2024-01-21'),
(3, '2024-01-24', 17500.00, 'Completed', '2024-01-25'),
(3, '2024-01-27', 8200.00, 'Completed', '2024-01-28'),
(3, '2024-01-31', 16500.00, 'Completed', '2024-02-01'),
(3, '2024-02-04', 13200.00, 'Completed', '2024-02-05'),
(3, '2024-02-07', 21500.00, 'Completed', '2024-02-08'),
(3, '2024-02-10', 10500.00, 'Completed', '2024-02-11'),

-- Agent 4 (Grace Auma) - 8 orders
(4, '2024-01-15', 14200.00, 'Completed', '2024-01-16'),
(4, '2024-01-18', 7800.00, 'Completed', '2024-01-19'),
(4, '2024-01-22', 16800.00, 'Completed', '2024-01-23'),
(4, '2024-01-25', 7100.00, 'Completed', '2024-01-26'),
(4, '2024-01-29', 14800.00, 'Completed', '2024-01-30'),
(4, '2024-02-02', 11800.00, 'Completed', '2024-02-03'),
(4, '2024-02-05', 19800.00, 'Completed', '2024-02-06'),
(4, '2024-02-08', 9200.00, 'Completed', '2024-02-09'),

-- Agent 5 (Peter Odongo) - 8 orders
(5, '2024-01-16', 12800.00, 'Completed', '2024-01-17'),
(5, '2024-01-19', 8100.00, 'Completed', '2024-01-20'),
(5, '2024-01-23', 17200.00, 'Completed', '2024-01-24'),
(5, '2024-01-26', 6900.00, 'Completed', '2024-01-27'),
(5, '2024-01-30', 15200.00, 'Completed', '2024-01-31'),
(5, '2024-02-03', 12200.00, 'Completed', '2024-02-04'),
(5, '2024-02-06', 20800.00, 'Completed', '2024-02-07'),
(5, '2024-02-09', 8700.00, 'Completed', '2024-02-10'),

-- Agent 6 (Martha Namukasa) - 8 orders
(6, '2024-01-17', 13800.00, 'Completed', '2024-01-18'),
(6, '2024-01-20', 8300.00, 'Completed', '2024-01-21'),
(6, '2024-01-24', 18200.00, 'Completed', '2024-01-25'),
(6, '2024-01-27', 7400.00, 'Completed', '2024-01-28'),
(6, '2024-01-31', 16200.00, 'Completed', '2024-02-01'),
(6, '2024-02-04', 12800.00, 'Completed', '2024-02-05'),
(6, '2024-02-07', 21200.00, 'Completed', '2024-02-08'),
(6, '2024-02-10', 9400.00, 'Completed', '2024-02-11'),

-- Agent 7 (Robert Kato) - 8 orders
(7, '2024-01-15', 14500.00, 'Completed', '2024-01-16'),
(7, '2024-01-18', 7900.00, 'Completed', '2024-01-19'),
(7, '2024-01-22', 18800.00, 'Completed', '2024-01-23'),
(7, '2024-01-25', 7200.00, 'Completed', '2024-01-26'),
(7, '2024-01-29', 15500.00, 'Completed', '2024-01-30'),
(7, '2024-02-02', 12400.00, 'Completed', '2024-02-03'),
(7, '2024-02-05', 21800.00, 'Completed', '2024-02-06'),
(7, '2024-02-08', 9100.00, 'Completed', '2024-02-09'),

-- Agent 8 (Susan Nabukeera) - 8 orders
(8, '2024-01-16', 13200.00, 'Completed', '2024-01-17'),
(8, '2024-01-19', 7600.00, 'Completed', '2024-01-20'),
(8, '2024-01-23', 19200.00, 'Completed', '2024-01-24'),
(8, '2024-01-26', 6800.00, 'Completed', '2024-01-27'),
(8, '2024-01-30', 15800.00, 'Completed', '2024-01-31'),
(8, '2024-02-03', 13600.00, 'Completed', '2024-02-04'),
(8, '2024-02-06', 22500.00, 'Completed', '2024-02-07'),
(8, '2024-02-09', 8900.00, 'Completed', '2024-02-10'),

-- Agent 9 (Thomas Mwanga) - 8 orders
(9, '2024-01-17', 14200.00, 'Completed', '2024-01-18'),
(9, '2024-01-20', 8200.00, 'Completed', '2024-01-21'),
(9, '2024-01-24', 17800.00, 'Completed', '2024-01-25'),
(9, '2024-01-27', 7100.00, 'Completed', '2024-01-28'),
(9, '2024-01-31', 14800.00, 'Completed', '2024-02-01'),
(9, '2024-02-04', 12900.00, 'Completed', '2024-02-05'),
(9, '2024-02-07', 20500.00, 'Completed', '2024-02-08'),
(9, '2024-02-10', 9600.00, 'Completed', '2024-02-11'),

-- Agent 10 (Alice Kyomugisha) - 8 orders
(10, '2024-01-15', 12600.00, 'Completed', '2024-01-16'),
(10, '2024-01-18', 8400.00, 'Completed', '2024-01-19'),
(10, '2024-01-22', 19500.00, 'Completed', '2024-01-23'),
(10, '2024-01-25', 7300.00, 'Completed', '2024-01-26'),
(10, '2024-01-29', 15200.00, 'Completed', '2024-01-30'),
(10, '2024-02-02', 12100.00, 'Completed', '2024-02-03'),
(10, '2024-02-05', 21200.00, 'Completed', '2024-02-06'),
(10, '2024-02-08', 9800.00, 'Completed', '2024-02-09');

orders
-- Add 60 more order details using a pattern
DECLARE @orderNum INT = 21;
DECLARE @counter INT = 0;

-- Common product combinations for Ugandan bakeries
WHILE @counter < 60  -- Adds details for orders 21-80
BEGIN
    -- Each order gets 2-4 random products
    DECLARE @numProducts INT = FLOOR(RAND()*3) + 2;
    DECLARE @prodCounter INT = 0;
    
    WHILE @prodCounter < @numProducts
    BEGIN
        DECLARE @prodID INT = FLOOR(RAND()*7) + 1;
        DECLARE @qty INT = FLOOR(RAND()*5) + 1; -- 1-5 items
        
        -- Get price from Products table
        DECLARE @price DECIMAL(10,2);
        SELECT @price = Price FROM Products WHERE ProductID = @prodID;
        
        -- Insert order detail
        INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
        VALUES (@orderNum, @prodID, @qty, @price);
        
        SET @prodCounter = @prodCounter + 1;
    END
    
    -- Update order total based on inserted details
    UPDATE Orders 
    SET TotalAmount = (
        SELECT SUM(Quantity * UnitPrice) 
        FROM OrderDetails 
        WHERE OrderID = @orderNum
    )
    WHERE OrderID = @orderNum;
    
    SET @orderNum = @orderNum + 1;
    SET @counter = @counter + 1;
END