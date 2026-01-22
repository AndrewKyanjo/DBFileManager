-- First, let's clear any existing order details to start fresh
DELETE FROM OrderDetails;
GO

-- Now insert hardcoded order details for ALL orders (1-143)
-- I'll create realistic patterns for Ugandan bakery orders

-- Orders 1-20: Various product combinations
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES
-- Order 1: Large mixed order (Agent 1)
(1, 1, 5, 3000.00),   -- 5 Brown Bread
(1, 2, 2, 4000.00),   -- 2 Chapati Packs
(1, 5, 1, 4500.00),   -- 1 Doughnuts

-- Order 2: Small breakfast order (Agent 1)
(2, 1, 2, 3000.00),   -- 2 Brown Bread
(2, 3, 1, 2500.00),   -- 1 Mandazi Pack

-- Order 3: Party order (Agent 1)
(3, 4, 3, 6000.00),   -- 3 Queen Cakes
(3, 7, 1, 5000.00),   -- 1 Cinnamon Rolls

-- Order 4: Regular supply (Agent 1)
(4, 1, 3, 3000.00),   -- 3 Brown Bread
(4, 6, 2, 3500.00),   -- 2 Buns

-- Order 5: Large mixed (Agent 1)
(5, 2, 3, 4000.00),   -- 3 Chapati Packs
(5, 3, 2, 2500.00),   -- 2 Mandazi Packs
(5, 5, 1, 4500.00),   -- 1 Doughnuts

-- Order 6: Small order (Agent 1)
(6, 1, 1, 3000.00),   -- 1 Brown Bread
(6, 6, 1, 3500.00),   -- 1 Buns

-- Order 7: Large special (Agent 1)
(7, 4, 2, 6000.00),   -- 2 Queen Cakes
(7, 7, 2, 5000.00),   -- 2 Cinnamon Rolls
(7, 5, 1, 4500.00),   -- 1 Doughnuts

-- Order 8: Regular (Agent 1)
(8, 1, 2, 3000.00),   -- 2 Brown Bread
(8, 3, 1, 2500.00),   -- 1 Mandazi Pack

-- Order 9: Agent 2
(9, 1, 3, 3000.00),
(9, 2, 1, 4000.00),
(9, 5, 1, 4500.00),

-- Order 10: Agent 2
(10, 3, 2, 2500.00),
(10, 6, 2, 3500.00),

-- Order 11: Agent 2
(11, 4, 2, 6000.00),
(11, 7, 1, 5000.00),

-- Order 12: Agent 2
(12, 1, 2, 3000.00),
(12, 2, 1, 4000.00),
(12, 3, 1, 2500.00),

-- Order 13: Agent 2
(13, 5, 2, 4500.00),
(13, 6, 1, 3500.00),

-- Order 14: Agent 2
(14, 1, 3, 3000.00),
(14, 4, 1, 6000.00),

-- Order 15: Agent 2
(15, 2, 3, 4000.00),
(15, 7, 1, 5000.00),

-- Order 16: Agent 2
(16, 3, 2, 2500.00),
(16, 6, 1, 3500.00),

-- Order 17: Agent 3
(17, 1, 4, 3000.00),
(17, 2, 1, 4000.00),

-- Order 18: Agent 3
(18, 3, 3, 2500.00),
(18, 5, 1, 4500.00),

-- Order 19: Agent 3
(19, 4, 2, 6000.00),
(19, 7, 1, 5000.00),

-- Order 20: Agent 3
(20, 1, 3, 3000.00),
(20, 6, 1, 3500.00),
(20, 3, 1, 2500.00);

-- Continue with orders 21-40
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES
-- Orders 21-30 (Agents 3-4)
(21, 2, 2, 4000.00), (21, 5, 1, 4500.00),
(22, 1, 1, 3000.00), (22, 3, 2, 2500.00),
(23, 4, 3, 6000.00),
(24, 6, 2, 3500.00), (24, 7, 1, 5000.00),
(25, 1, 2, 3000.00), (25, 2, 1, 4000.00),
(26, 3, 4, 2500.00),
(27, 5, 2, 4500.00), (27, 6, 1, 3500.00),
(28, 4, 1, 6000.00), (28, 7, 1, 5000.00),
(29, 1, 3, 3000.00), (29, 3, 1, 2500.00),
(30, 2, 2, 4000.00), (30, 5, 1, 4500.00),

-- Orders 31-40 (Agents 4-5)
(31, 1, 2, 3000.00), (31, 6, 1, 3500.00),
(32, 3, 3, 2500.00),
(33, 4, 2, 6000.00), (33, 7, 1, 5000.00),
(34, 1, 1, 3000.00), (34, 2, 1, 4000.00),
(35, 5, 3, 4500.00),
(36, 6, 2, 3500.00), (36, 3, 1, 2500.00),
(37, 4, 1, 6000.00), (37, 7, 2, 5000.00),
(38, 1, 4, 3000.00),
(39, 2, 2, 4000.00), (39, 5, 1, 4500.00),
(40, 3, 2, 2500.00), (40, 6, 1, 3500.00);

-- Orders 41-60
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES
(41, 1, 3, 3000.00), (41, 4, 1, 6000.00),
(42, 2, 2, 4000.00), (42, 5, 1, 4500.00),
(43, 3, 4, 2500.00),
(44, 6, 2, 3500.00), (44, 7, 1, 5000.00),
(45, 1, 2, 3000.00), (45, 2, 1, 4000.00),
(46, 4, 3, 6000.00),
(47, 5, 2, 4500.00), (47, 3, 1, 2500.00),
(48, 7, 2, 5000.00),
(49, 1, 3, 3000.00), (49, 6, 1, 3500.00),
(50, 2, 1, 4000.00), (50, 4, 1, 6000.00),
(51, 3, 3, 2500.00), (51, 5, 1, 4500.00),
(52, 6, 2, 3500.00),
(53, 1, 4, 3000.00), (53, 7, 1, 5000.00),
(54, 2, 3, 4000.00),
(55, 4, 2, 6000.00), (55, 5, 1, 4500.00),
(56, 3, 2, 2500.00), (56, 6, 1, 3500.00),
(57, 1, 2, 3000.00), (57, 2, 1, 4000.00),
(58, 7, 3, 5000.00),
(59, 4, 1, 6000.00), (59, 5, 2, 4500.00),
(60, 1, 3, 3000.00), (60, 3, 1, 2500.00);

-- Orders 61-80
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES
(61, 2, 2, 4000.00), (61, 6, 1, 3500.00),
(62, 4, 3, 6000.00),
(63, 5, 2, 4500.00), (63, 7, 1, 5000.00),
(64, 1, 4, 3000.00),
(65, 3, 3, 2500.00), (65, 6, 1, 3500.00),
(66, 2, 2, 4000.00), (66, 4, 1, 6000.00),
(67, 7, 2, 5000.00),
(68, 1, 2, 3000.00), (68, 5, 1, 4500.00),
(69, 3, 4, 2500.00),
(70, 6, 2, 3500.00), (70, 2, 1, 4000.00),
(71, 4, 2, 6000.00), (71, 7, 1, 5000.00),
(72, 1, 3, 3000.00),
(73, 5, 3, 4500.00), (73, 3, 1, 2500.00),
(74, 6, 2, 3500.00),
(75, 2, 2, 4000.00), (75, 4, 1, 6000.00),
(76, 7, 2, 5000.00),
(77, 1, 4, 3000.00), (77, 3, 1, 2500.00),
(78, 5, 2, 4500.00), (78, 6, 1, 3500.00),
(79, 2, 3, 4000.00),
(80, 4, 2, 6000.00), (80, 7, 1, 5000.00);

-- Now for PENDING orders (81-110)
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES
-- Pending Order 81 (Agent 1)
(81, 1, 3, 3000.00), (81, 2, 1, 4000.00), (81, 3, 2, 2500.00),

-- Pending Order 82 (Agent 1)
(82, 4, 1, 6000.00), (82, 6, 1, 3500.00),

-- Pending Order 83 (Agent 1)
(83, 5, 2, 4500.00), (83, 7, 2, 5000.00),

-- Pending Order 84 (Agent 2)
(84, 1, 2, 3000.00), (84, 2, 2, 4000.00),

-- Pending Order 85 (Agent 2)
(85, 3, 3, 2500.00), (85, 5, 1, 4500.00),

-- Pending Order 86 (Agent 2)
(86, 4, 2, 6000.00), (86, 7, 1, 5000.00),

-- Pending Order 87 (Agent 3)
(87, 1, 4, 3000.00),

-- Pending Order 88 (Agent 3)
(88, 6, 2, 3500.00), (88, 3, 1, 2500.00),

-- Pending Order 89 (Agent 3)
(89, 2, 3, 4000.00), (89, 5, 1, 4500.00),

-- Pending Order 90 (Agent 4)
(90, 4, 1, 6000.00), (90, 7, 2, 5000.00),

-- Pending Order 91 (Agent 4)
(91, 1, 3, 3000.00), (91, 6, 1, 3500.00),

-- Pending Order 92 (Agent 4)
(92, 3, 4, 2500.00),

-- Pending Order 93 (Agent 5)
(93, 2, 2, 4000.00), (93, 5, 1, 4500.00),

-- Pending Order 94 (Agent 5)
(94, 1, 2, 3000.00), (94, 4, 1, 6000.00),

-- Pending Order 95 (Agent 5)
(95, 6, 3, 3500.00), (95, 7, 1, 5000.00),

-- Pending Order 96 (Agent 6)
(96, 1, 4, 3000.00), (96, 3, 1, 2500.00),

-- Pending Order 97 (Agent 6)
(97, 2, 2, 4000.00), (97, 5, 2, 4500.00),

-- Pending Order 98 (Agent 6)
(98, 4, 1, 6000.00), (98, 7, 1, 5000.00),

-- Pending Order 99 (Agent 7)
(99, 1, 3, 3000.00), (99, 6, 1, 3500.00),

-- Pending Order 100 (Agent 7)
(100, 3, 5, 2500.00),

-- Pending Order 101 (Agent 7)
(101, 2, 3, 4000.00), (101, 4, 1, 6000.00),

-- Pending Order 102 (Agent 8)
(102, 5, 2, 4500.00), (102, 7, 1, 5000.00),

-- Pending Order 103 (Agent 8)
(103, 1, 2, 3000.00), (103, 3, 2, 2500.00),

-- Pending Order 104 (Agent 8)
(104, 6, 3, 3500.00),

-- Pending Order 105 (Agent 9)
(105, 2, 2, 4000.00), (105, 4, 1, 6000.00),

-- Pending Order 106 (Agent 9)
(106, 1, 3, 3000.00), (106, 5, 1, 4500.00),

-- Pending Order 107 (Agent 9)
(107, 7, 2, 5000.00), (107, 3, 1, 2500.00),

-- Pending Order 108 (Agent 10)
(108, 1, 4, 3000.00), (108, 6, 1, 3500.00),

-- Pending Order 109 (Agent 10)
(109, 3, 3, 2500.00), (109, 2, 1, 4000.00),

-- Pending Order 110 (Agent 10)
(110, 4, 2, 6000.00), (110, 5, 1, 4500.00);

-- CANCELLED orders (111-130)
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES
-- Cancelled Order 111 (Agent 1)
(111, 1, 2, 3000.00), (111, 2, 1, 4000.00),

-- Cancelled Order 112 (Agent 1)
(112, 3, 4, 2500.00),

-- Cancelled Order 113 (Agent 2)
(113, 4, 1, 6000.00), (113, 6, 1, 3500.00),

-- Cancelled Order 114 (Agent 2)
(114, 5, 2, 4500.00),

-- Cancelled Order 115 (Agent 3)
(115, 1, 3, 3000.00), (115, 7, 1, 5000.00),

-- Cancelled Order 116 (Agent 3)
(116, 2, 2, 4000.00), (116, 3, 1, 2500.00),

-- Cancelled Order 117 (Agent 4)
(117, 4, 2, 6000.00),

-- Cancelled Order 118 (Agent 4)
(118, 1, 2, 3000.00), (118, 5, 1, 4500.00),

-- Cancelled Order 119 (Agent 5)
(119, 3, 3, 2500.00), (119, 6, 1, 3500.00),

-- Cancelled Order 120 (Agent 5)
(120, 2, 2, 4000.00), (120, 7, 1, 5000.00),

-- Cancelled Order 121 (Agent 6)
(121, 1, 4, 3000.00),

-- Cancelled Order 122 (Agent 6)
(122, 4, 1, 6000.00), (122, 5, 1, 4500.00),

-- Cancelled Order 123 (Agent 7)
(123, 3, 5, 2500.00),

-- Cancelled Order 124 (Agent 7)
(124, 2, 2, 4000.00), (124, 6, 1, 3500.00),

-- Cancelled Order 125 (Agent 8)
(125, 1, 3, 3000.00), (125, 7, 1, 5000.00),

-- Cancelled Order 126 (Agent 8)
(126, 4, 1, 6000.00), (126, 5, 2, 4500.00),

-- Cancelled Order 127 (Agent 9)
(127, 2, 3, 4000.00),

-- Cancelled Order 128 (Agent 9)
(128, 1, 2, 3000.00), (128, 3, 2, 2500.00),

-- Cancelled Order 129 (Agent 10)
(129, 6, 3, 3500.00),

-- Cancelled Order 130 (Agent 10)
(130, 4, 1, 6000.00), (130, 7, 1, 5000.00);

-- PROCESSING orders (131-136)
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES
-- Processing Order 131 (Agent 1)
(131, 1, 3, 3000.00), (131, 2, 2, 4000.00), (131, 5, 1, 4500.00),

-- Processing Order 132 (Agent 1)
(132, 4, 1, 6000.00), (132, 6, 1, 3500.00),

-- Processing Order 133 (Agent 2)
(133, 3, 4, 2500.00), (133, 7, 1, 5000.00),

-- Processing Order 134 (Agent 2)
(134, 1, 2, 3000.00), (134, 2, 1, 4000.00),

-- Processing Order 135 (Agent 3)
(135, 5, 3, 4500.00), (135, 6, 1, 3500.00),

-- Processing Order 136 (Agent 3)
(136, 4, 2, 6000.00);

-- ON HOLD orders (137-143)
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES
-- On Hold Order 137 (Agent 1)
(137, 1, 5, 3000.00), (137, 3, 2, 2500.00),

-- On Hold Order 138 (Agent 2)
(138, 2, 3, 4000.00), (138, 7, 1, 5000.00),

-- On Hold Order 139 (Agent 3)
(139, 4, 2, 6000.00), (139, 5, 1, 4500.00),

-- On Hold Order 140 (Agent 4)
(140, 1, 3, 3000.00), (140, 6, 2, 3500.00),

-- On Hold Order 141 (Agent 5)
(141, 3, 4, 2500.00), (141, 7, 1, 5000.00),

-- On Hold Order 142 (Agent 1) -- Additional on hold
(142, 2, 2, 4000.00), (142, 4, 1, 6000.00),

-- On Hold Order 143 (Agent 2) -- Additional on hold
(143, 1, 4, 3000.00), (143, 5, 1, 4500.00);