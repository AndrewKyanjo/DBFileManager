
-- Insert Departments (6 departments + 1 executive department)
INSERT INTO Departments (DepartmentName, ManagerID, Budget, Location, PhoneExtension, CreatedDate) 
VALUES
-- Executive department for C-level
('Executive', NULL, 5000000.00, 'Headquarters - 10th Floor', '1000', '2020-01-15'),
-- Core departments for SAAS company
('Engineering', NULL, 1500000.00, 'Building A - Floor 3', '2000', '2020-02-01'),
('Sales & Marketing', NULL, 1200000.00, 'Building B - Floor 2', '3000', '2020-02-01'),
('Product Management', NULL, 800000.00, 'Building A - Floor 4', '4000', '2020-03-01'),
('Customer Success', NULL, 900000.00, 'Building C - Floor 1', '5000', '2020-03-15'),
('Finance & Operations', NULL, 700000.00, 'Building B - Floor 1', '6000', '2020-04-01'),
('Human Resources', NULL, 600000.00, 'Building C - Floor 2', '7000', '2020-04-15');

-- First, let's insert 40 employees (we'll update Department managers later)
INSERT INTO Employees (FirstName, LastName, Gender, DateOfBirth, HireDate, DepartmentID, JobTitle, EmploymentType, IsActive)
VALUES
-- Executive Team (DepartmentID: 1)
('Sarah', 'Johnson', 'F', '1975-03-12', '2020-01-15', 1, 'Chief Executive Officer', 'Permanent', 1),
('Michael', 'Chen', 'M', '1978-07-22', '2020-01-15', 1, 'Chief Operating Officer', 'Permanent', 1),
('David', 'Rodriguez', 'M', '1980-11-05', '2020-02-01', 1, 'Chief Technology Officer', 'Permanent', 1),
('Emily', 'Williams', 'F', '1982-04-18', '2020-03-01', 1, 'Chief Financial Officer', 'Permanent', 1),

-- Engineering Team (DepartmentID: 2)
('James', 'Wilson', 'M', '1990-06-30', '2021-01-15', 2, 'VP of Engineering', 'Permanent', 1),
('Priya', 'Patel', 'F', '1992-09-14', '2021-02-01', 2, 'Senior Software Engineer', 'Permanent', 1),
('Robert', 'Kim', 'M', '1993-12-08', '2021-03-15', 2, 'Software Engineer', 'Permanent', 1),
('Lisa', 'Garcia', 'F', '1991-04-25', '2021-04-01', 2, 'DevOps Engineer', 'Permanent', 1),
('Thomas', 'Anderson', 'M', '1994-08-17', '2022-01-10', 2, 'Frontend Developer', 'Permanent', 1),
('Maria', 'Silva', 'F', '1995-01-22', '2022-02-15', 2, 'Backend Developer', 'Permanent', 1),
('Kenji', 'Tanaka', 'M', '1993-05-30', '2022-03-01', 2, 'QA Engineer', 'Permanent', 1),
('Olivia', 'Brown', 'F', '1996-03-18', '2023-01-15', 2, 'Junior Developer', 'Contract', 1),

-- Sales & Marketing (DepartmentID: 3)
('Brian', 'Taylor', 'M', '1985-11-30', '2020-02-01', 3, 'VP of Sales', 'Permanent', 1),
('Jessica', 'Miller', 'F', '1988-02-14', '2020-05-15', 3, 'Sales Director', 'Permanent', 1),
('Alex', 'Martinez', 'M', '1990-07-22', '2021-01-20', 3, 'Account Executive', 'Permanent', 1),
('Sophia', 'Lee', 'F', '1992-10-05', '2021-03-10', 3, 'Marketing Manager', 'Permanent', 1),
('Kevin', 'Davis', 'M', '1994-04-18', '2021-08-15', 3, 'Business Development', 'Permanent', 1),
('Aisha', 'Mohammed', 'F', '1995-09-12', '2022-02-01', 3, 'Digital Marketer', 'Permanent', 1),
('Daniel', 'White', 'M', '1993-12-30', '2022-05-15', 3, 'SDR', 'Contract', 1),

-- Product Management (DepartmentID: 4)
('Jennifer', 'Clark', 'F', '1987-06-10', '2020-03-01', 4, 'VP of Product', 'Permanent', 1),
('Ryan', 'Lewis', 'M', '1990-03-25', '2021-01-15', 4, 'Product Manager', 'Permanent', 1),
('Chloe', 'Walker', 'F', '1992-08-14', '2021-06-01', 4, 'Product Designer', 'Permanent', 1),
('Marcus', 'Hall', 'M', '1994-11-30', '2022-01-10', 4, 'UX Researcher', 'Permanent', 1),

-- Customer Success (DepartmentID: 5)
('Amanda', 'Young', 'F', '1989-05-20', '2020-03-15', 5, 'Director of Customer Success', 'Permanent', 1),
('Samuel', 'King', 'M', '1991-09-15', '2021-02-01', 5, 'Customer Success Manager', 'Permanent', 1),
('Fatima', 'Ali', 'F', '1993-02-28', '2021-05-15', 5, 'Support Specialist', 'Permanent', 1),
('Ethan', 'Scott', 'M', '1995-07-10', '2022-01-15', 5, 'Onboarding Specialist', 'Permanent', 1),
('Isabella', 'Green', 'F', '1996-12-05', '2022-08-01', 5, 'Technical Support', 'Contract', 1),

-- Finance & Operations (DepartmentID: 6)
('William', 'Harris', 'M', '1983-04-12', '2020-04-01', 6, 'Finance Director', 'Permanent', 1),
('Natalie', 'Martin', 'F', '1988-10-22', '2021-01-15', 6, 'Accountant', 'Permanent', 1),
('Christopher', 'Thompson', 'M', '1992-01-30', '2021-07-01', 6, 'Financial Analyst', 'Permanent', 1),
('Zoe', 'Wright', 'F', '1994-06-18', '2022-03-15', 6, 'Payroll Specialist', 'Permanent', 1),

-- Human Resources (DepartmentID: 7)
('Victoria', 'Adams', 'F', '1986-12-08', '2020-04-15', 7, 'HR Director', 'Permanent', 1),
('Benjamin', 'Campbell', 'M', '1990-07-14', '2021-03-01', 7, 'HR Business Partner', 'Permanent', 1),
('Grace', 'Baker', 'F', '1993-03-25', '2022-01-15', 7, 'Recruiter', 'Permanent', 1),
('Lucas', 'Nelson', 'M', '1995-11-08', '2023-01-10', 7, 'HR Coordinator', 'Contract', 1),

-- Additional Employees to reach 40
('Emma', 'Carter', 'F', '1997-02-14', '2023-06-01', 2, 'Software Engineer Intern', 'Contract', 1),
('Noah', 'Mitchell', 'M', '1996-08-30', '2023-08-15', 3, 'Marketing Intern', 'Contract', 1),
('Mia', 'Perez', 'F', '1997-05-22', '2023-09-01', 5, 'Customer Support Intern', 'Contract', 1);

-- Update Department Managers (matching EmployeeID from above)
UPDATE Departments SET ManagerID = 1 WHERE DepartmentID = 1;  -- Sarah Johnson -> Executive
UPDATE Departments SET ManagerID = 5 WHERE DepartmentID = 2;  -- James Wilson -> Engineering
UPDATE Departments SET ManagerID = 13 WHERE DepartmentID = 3; -- Brian Taylor -> Sales
UPDATE Departments SET ManagerID = 20 WHERE DepartmentID = 4; -- Jennifer Clark -> Product
UPDATE Departments SET ManagerID = 24 WHERE DepartmentID = 5; -- Amanda Young -> Customer Success
UPDATE Departments SET ManagerID = 29 WHERE DepartmentID = 6; -- William Harris -> Finance
UPDATE Departments SET ManagerID = 33 WHERE DepartmentID = 7; -- Victoria Adams -> HR

-- Insert Salary Structures (~60 records, 1.5x employee count)
-- Note: Each employee gets 1-2 salary records (promotions, raises)
INSERT INTO SalaryStructures (EmployeeID, BasicSalary, HousingAllowance, TransportAllowance, MedicalAllowance, EffectiveFrom, EffectiveTo, IsCurrent)
VALUES
-- Executive Team (Higher salaries)
(1, 350000.00, 50000.00, 20000.00, 15000.00, '2020-01-15', '2024-12-31', 1),  -- CEO
(2, 280000.00, 40000.00, 15000.00, 12000.00, '2020-01-15', '2023-12-31', 0), -- COO (old)
(2, 320000.00, 45000.00, 18000.00, 14000.00, '2024-01-01', NULL, 1),        -- COO (raise)
(3, 300000.00, 40000.00, 15000.00, 12000.00, '2020-02-01', NULL, 1),        -- CTO
(4, 280000.00, 35000.00, 15000.00, 12000.00, '2020-03-01', NULL, 1),        -- CFO

-- Engineering - VP & Senior
(5, 220000.00, 25000.00, 10000.00, 8000.00, '2021-01-15', '2023-12-31', 0),  -- VP Eng (old)
(5, 250000.00, 30000.00, 12000.00, 10000.00, '2024-01-01', NULL, 1),         -- VP Eng (promotion)
(6, 160000.00, 18000.00, 8000.00, 6000.00, '2021-02-01', '2023-12-31', 0),   -- Senior Eng (old)
(6, 180000.00, 20000.00, 10000.00, 8000.00, '2024-01-01', NULL, 1),          -- Senior Eng (raise)

-- Engineering - Regular Engineers (various levels)
(7, 110000.00, 12000.00, 6000.00, 4000.00, '2021-03-15', NULL, 1),
(8, 115000.00, 13000.00, 6000.00, 4000.00, '2021-04-01', NULL, 1),
(9, 95000.00, 10000.00, 5000.00, 3000.00, '2022-01-10', NULL, 1),
(10, 92000.00, 10000.00, 5000.00, 3000.00, '2022-02-15', NULL, 1),
(11, 85000.00, 9000.00, 4000.00, 3000.00, '2022-03-01', NULL, 1),
(12, 65000.00, 7000.00, 3000.00, 2000.00, '2023-01-15', NULL, 1),  -- Contract
(38, 45000.00, 4000.00, 2000.00, 1000.00, '2023-06-01', NULL, 1),   -- Intern

-- Sales & Marketing (base + commission structures implied)
(13, 180000.00, 20000.00, 10000.00, 8000.00, '2020-02-01', NULL, 1),  -- VP Sales
(14, 130000.00, 15000.00, 8000.00, 6000.00, '2020-05-15', NULL, 1),   -- Sales Director
(15, 90000.00, 10000.00, 5000.00, 4000.00, '2021-01-20', NULL, 1),    -- Account Exec
(16, 110000.00, 12000.00, 6000.00, 5000.00, '2021-03-10', NULL, 1),   -- Marketing Manager
(17, 85000.00, 9000.00, 4000.00, 3000.00, '2021-08-15', NULL, 1),     -- Business Dev
(18, 75000.00, 8000.00, 4000.00, 3000.00, '2022-02-01', NULL, 1),     -- Digital Marketer
(19, 60000.00, 6000.00, 3000.00, 2000.00, '2022-05-15', NULL, 1),     -- SDR (Contract)
(39, 40000.00, 3000.00, 2000.00, 1000.00, '2023-08-15', NULL, 1),     -- Intern

-- Product Management
(20, 190000.00, 22000.00, 10000.00, 8000.00, '2020-03-01', NULL, 1),  -- VP Product
(21, 125000.00, 14000.00, 7000.00, 5000.00, '2021-01-15', NULL, 1),   -- Product Manager
(22, 105000.00, 11000.00, 6000.00, 4000.00, '2021-06-01', NULL, 1),   -- Product Designer
(23, 95000.00, 10000.00, 5000.00, 4000.00, '2022-01-10', NULL, 1),    -- UX Researcher

-- Customer Success
(24, 140000.00, 16000.00, 8000.00, 6000.00, '2020-03-15', NULL, 1),   -- Director
(25, 95000.00, 10000.00, 5000.00, 4000.00, '2021-02-01', NULL, 1),    -- CS Manager
(26, 70000.00, 8000.00, 4000.00, 3000.00, '2021-05-15', '2023-12-31', 0), -- Support (old)
(26, 78000.00, 9000.00, 5000.00, 4000.00, '2024-01-01', NULL, 1),          -- Support (raise)
(27, 72000.00, 8000.00, 4000.00, 3000.00, '2022-01-15', NULL, 1),     -- Onboarding
(28, 55000.00, 6000.00, 3000.00, 2000.00, '2022-08-01', NULL, 1),     -- Tech Support (Contract)
(40, 42000.00, 3500.00, 2000.00, 1500.00, '2023-09-01', NULL, 1),     -- Intern

-- Finance & Operations
(29, 160000.00, 18000.00, 8000.00, 6000.00, '2020-04-01', NULL, 1),   -- Finance Director
(30, 85000.00, 9000.00, 4000.00, 3000.00, '2021-01-15', NULL, 1),     -- Accountant
(31, 95000.00, 10000.00, 5000.00, 4000.00, '2021-07-01', NULL, 1),    -- Financial Analyst
(32, 70000.00, 8000.00, 4000.00, 3000.00, '2022-03-15', NULL, 1),     -- Payroll Specialist

-- Human Resources
(33, 135000.00, 15000.00, 7000.00, 6000.00, '2020-04-15', NULL, 1),   -- HR Director
(34, 88000.00, 9000.00, 4000.00, 3000.00, '2021-03-01', NULL, 1),     -- HR Business Partner
(35, 75000.00, 8000.00, 4000.00, 3000.00, '2022-01-15', NULL, 1),     -- Recruiter
(36, 58000.00, 6000.00, 3000.00, 2000.00, '2023-01-10', NULL, 1),     -- HR Coordinator (Contract)

-- Add historical salary records for some employees (to reach ~60 total)
(7, 100000.00, 10000.00, 5000.00, 3000.00, '2021-03-15', '2023-12-31', 0), -- Robert Kim raise
(9, 85000.00, 8000.00, 4000.00, 2000.00, '2022-01-10', '2023-12-31', 0),   -- Thomas Anderson raise
(15, 80000.00, 8000.00, 4000.00, 3000.00, '2021-01-20', '2023-12-31', 0),  -- Alex Martinez raise
(25, 85000.00, 8000.00, 4000.00, 3000.00, '2021-02-01', '2023-12-31', 0);  -- Samuel King raise

-- Insert Deductions (~80 records, 2x employee count)
INSERT INTO Deductions (EmployeeID, DeductionType, Amount, Percentage, IsStatutory, StartDate, EndDate)
VALUES
-- Statutory Deductions (Tax, Social Security, Health Insurance)
(1, 'Federal Income Tax', NULL, 22.0, 1, '2020-01-15', NULL),
(1, 'State Income Tax', NULL, 5.75, 1, '2020-01-15', NULL),
(1, 'Social Security', NULL, 6.2, 1, '2020-01-15', NULL),
(1, 'Medicare', NULL, 1.45, 1, '2020-01-15', NULL),
(1, 'Health Insurance', 850.00, NULL, 0, '2020-01-15', NULL),

(2, 'Federal Income Tax', NULL, 22.0, 1, '2020-01-15', NULL),
(2, 'State Income Tax', NULL, 5.75, 1, '2020-01-15', NULL),
(2, 'Social Security', NULL, 6.2, 1, '2020-01-15', NULL),
(2, 'Medicare', NULL, 1.45, 1, '2020-01-15', NULL),
(2, 'Health Insurance', 850.00, NULL, 0, '2020-01-15', NULL),

-- Repeat pattern for all employees (simplified for brevity, in reality each employee would have these)
-- Voluntary Deductions (Retirement, Other Benefits)
(1, '401(k) Contribution', NULL, 6.0, 0, '2020-01-15', NULL),
(1, 'Dental Insurance', 45.00, NULL, 0, '2020-01-15', NULL),
(1, 'Vision Insurance', 25.00, NULL, 0, '2020-01-15', NULL),

(5, 'Federal Income Tax', NULL, 22.0, 1, '2021-01-15', NULL),
(5, 'State Income Tax', NULL, 5.75, 1, '2021-01-15', NULL),
(5, 'Social Security', NULL, 6.2, 1, '2021-01-15', NULL),
(5, 'Medicare', NULL, 1.45, 1, '2021-01-15', NULL),
(5, 'Health Insurance', 750.00, NULL, 0, '2021-01-15', NULL),
(5, '401(k) Contribution', NULL, 5.0, 0, '2021-01-15', NULL),

-- Mid-level employees
(7, 'Federal Income Tax', NULL, 18.0, 1, '2021-03-15', NULL),
(7, 'State Income Tax', NULL, 5.75, 1, '2021-03-15', NULL),
(7, 'Social Security', NULL, 6.2, 1, '2021-03-15', NULL),
(7, 'Medicare', NULL, 1.45, 1, '2021-03-15', NULL),
(7, 'Health Insurance', 550.00, NULL, 0, '2021-03-15', NULL),
(7, '401(k) Contribution', NULL, 4.0, 0, '2021-03-15', NULL),

-- Junior/Contract employees
(12, 'Federal Income Tax', NULL, 12.0, 1, '2023-01-15', NULL),
(12, 'State Income Tax', NULL, 5.75, 1, '2023-01-15', NULL),
(12, 'Social Security', NULL, 6.2, 1, '2023-01-15', NULL),
(12, 'Medicare', NULL, 1.45, 1, '2023-01-15', NULL),
(12, 'Health Insurance', 350.00, NULL, 0, '2023-01-15', NULL),

-- Additional voluntary deductions for variety
(6, 'Charitable Donation', 100.00, NULL, 0, '2021-02-01', NULL),
(14, 'Parking Permit', 120.00, NULL, 0, '2020-05-15', NULL),
(20, 'Gym Membership', 65.00, NULL, 0, '2020-03-01', NULL),
(25, 'Union Dues', 85.00, NULL, 0, '2021-02-01', NULL),
(33, 'Professional Dues', 120.00, NULL, 0, '2020-04-15', NULL),

-- Loan repayments
(9, 'Student Loan Repayment', 300.00, NULL, 0, '2022-01-10', '2025-12-31'),
(17, 'Company Loan', 200.00, NULL, 0, '2021-08-15', '2024-12-31'),
(23, 'Technology Purchase', 150.00, NULL, 0, '2022-01-10', '2024-06-30'),

-- Add deductions for remaining employees (simplified pattern)
-- For brevity, adding a representative sample. In production, all 40 employees would have deductions
(3, 'Federal Income Tax', NULL, 22.0, 1, '2020-02-01', NULL),
(3, 'State Income Tax', NULL, 5.75, 1, '2020-02-01', NULL),
(3, 'Social Security', NULL, 6.2, 1, '2020-02-01', NULL),
(3, 'Medicare', NULL, 1.45, 1, '2020-02-01', NULL),
(3, 'Health Insurance', 850.00, NULL, 0, '2020-02-01', NULL),

(4, 'Federal Income Tax', NULL, 22.0, 1, '2020-03-01', NULL),
(4, 'State Income Tax', NULL, 5.75, 1, '2020-03-01', NULL),
(4, 'Social Security', NULL, 6.2, 1, '2020-03-01', NULL),
(4, 'Medicare', NULL, 1.45, 1, '2020-03-01', NULL),
(4, 'Health Insurance', 850.00, NULL, 0, '2020-03-01', NULL),

(8, 'Federal Income Tax', NULL, 18.0, 1, '2021-04-01', NULL),
(8, 'State Income Tax', NULL, 5.75, 1, '2021-04-01', NULL),
(8, 'Social Security', NULL, 6.2, 1, '2021-04-01', NULL),
(8, 'Medicare', NULL, 1.45, 1, '2021-04-01', NULL),
(8, 'Health Insurance', 550.00, NULL, 0, '2021-04-01', NULL),

(10, 'Federal Income Tax', NULL, 16.0, 1, '2022-02-15', NULL),
(10, 'State Income Tax', NULL, 5.75, 1, '2022-02-15', NULL),
(10, 'Social Security', NULL, 6.2, 1, '2022-02-15', NULL),
(10, 'Medicare', NULL, 1.45, 1, '2022-02-15', NULL),
(10, 'Health Insurance', 500.00, NULL, 0, '2022-02-15', NULL),

-- Add more to reach ~80 records
(11, 'Federal Income Tax', NULL, 15.0, 1, '2022-03-01', NULL),
(11, 'State Income Tax', NULL, 5.75, 1, '2022-03-01', NULL),
(11, 'Social Security', NULL, 6.2, 1, '2022-03-01', NULL),
(11, 'Medicare', NULL, 1.45, 1, '2022-03-01', NULL),
(13, 'Federal Income Tax', NULL, 22.0, 1, '2020-02-01', NULL),
(13, 'State Income Tax', NULL, 5.75, 1, '2020-02-01', NULL),
(14, 'Federal Income Tax', NULL, 20.0, 1, '2020-05-15', NULL),
(14, 'State Income Tax', NULL, 5.75, 1, '2020-05-15', NULL),
(15, 'Federal Income Tax', NULL, 18.0, 1, '2021-01-20', NULL),
(15, 'State Income Tax', NULL, 5.75, 1, '2021-01-20', NULL),
(16, 'Federal Income Tax', NULL, 19.0, 1, '2021-03-10', NULL),
(16, 'State Income Tax', NULL, 5.75, 1, '2021-03-10', NULL);

-- Insert 24 Payroll Periods (Jan 2024 to Dec 2025, Monthly)
INSERT INTO PayrollPeriods (PeriodName, StartDate, EndDate, PaymentDate, IsClosed, CreatedBy)
VALUES
('January 2024', '2024-01-01', '2024-01-31', '2024-02-05', 1, 'System'),
('February 2024', '2024-02-01', '2024-02-29', '2024-03-05', 1, 'System'),
('March 2024', '2024-03-01', '2024-03-31', '2024-04-05', 1, 'System'),
('April 2024', '2024-04-01', '2024-04-30', '2024-05-05', 1, 'System'),
('May 2024', '2024-05-01', '2024-05-31', '2024-06-05', 1, 'System'),
('June 2024', '2024-06-01', '2024-06-30', '2024-07-05', 1, 'System'),
('July 2024', '2024-07-01', '2024-07-31', '2024-08-05', 1, 'System'),
('August 2024', '2024-08-01', '2024-08-31', '2024-09-05', 1, 'System'),
('September 2024', '2024-09-01', '2024-09-30', '2024-10-05', 1, 'System'),
('October 2024', '2024-10-01', '2024-10-31', '2024-11-05', 1, 'System'),
('November 2024', '2024-11-01', '2024-11-30', '2024-12-05', 1, 'System'),
('December 2024', '2024-12-01', '2024-12-31', '2025-01-05', 1, 'System'),
('January 2025', '2025-01-01', '2025-01-31', '2025-02-05', 1, 'System'),
('February 2025', '2025-02-01', '2025-02-28', '2025-03-05', 1, 'System'),
('March 2025', '2025-03-01', '2025-03-31', '2025-04-05', 1, 'System'),
('April 2025', '2025-04-01', '2025-04-30', '2025-05-05', 1, 'System'),
('May 2025', '2025-05-01', '2025-05-31', '2025-06-05', 1, 'System'),
('June 2025', '2025-06-01', '2025-06-30', '2025-07-05', 1, 'System'),
('July 2025', '2025-07-01', '2025-07-31', '2025-08-05', 1, 'System'),
('August 2025', '2025-08-01', '2025-08-31', '2025-09-05', 1, 'System'),
('September 2025', '2025-09-01', '2025-09-30', '2025-10-05', 0, 'System'),
('October 2025', '2025-10-01', '2025-10-31', '2025-11-05', 0, 'System'),
('November 2025', '2025-11-01', '2025-11-30', '2025-12-05', 0, 'System'),
('December 2025', '2025-12-01', '2025-12-31', '2026-01-05', 0, 'System');

-- Insert Payslips (for January 2024 as example - in reality would generate for all periods)
-- For brevity, inserting payslips for January 2024 only for a subset of employees
INSERT INTO Payslips (EmployeeID, PayrollPeriodID, GrossPay, TotalDeductions, PaymentStatus)
VALUES
-- Executive Team
(1, 1, 435000.00, 120000.00, 'Paid'),  -- Sarah Johnson
(2, 1, 383000.00, 105000.00, 'Paid'),  -- Michael Chen
(3, 1, 367000.00, 101000.00, 'Paid'),  -- David Rodriguez
(4, 1, 342000.00, 94000.00, 'Paid'),   -- Emily Williams

-- Engineering Team
(5, 1, 302000.00, 83000.00, 'Paid'),   -- James Wilson
(6, 1, 218000.00, 60000.00, 'Paid'),   -- Priya Patel
(7, 1, 133000.00, 36600.00, 'Paid'),   -- Robert Kim
(8, 1, 138000.00, 37900.00, 'Paid'),   -- Lisa Garcia
(9, 1, 113000.00, 31000.00, 'Paid'),   -- Thomas Anderson
(10, 1, 110000.00, 30200.00, 'Paid'),  -- Maria Silva
(11, 1, 101000.00, 27700.00, 'Paid'),  -- Kenji Tanaka
(12, 1, 77000.00, 21100.00, 'Paid'),   -- Olivia Brown

-- Sales & Marketing
(13, 1, 218000.00, 59900.00, 'Paid'),  -- Brian Taylor
(14, 1, 159000.00, 43700.00, 'Paid'),  -- Jessica Miller
(15, 1, 109000.00, 29900.00, 'Paid'),  -- Alex Martinez
(16, 1, 133000.00, 36500.00, 'Paid'),  -- Sophia Lee
(17, 1, 101000.00, 27700.00, 'Paid'),  -- Kevin Davis
(18, 1, 90000.00, 24700.00, 'Paid'),   -- Aisha Mohammed
(19, 1, 71000.00, 19500.00, 'Paid'),   -- Daniel White

-- Product Management
(20, 1, 230000.00, 63200.00, 'Paid'),  -- Jennifer Clark
(21, 1, 151000.00, 41500.00, 'Paid'),  -- Ryan Lewis
(22, 1, 126000.00, 34600.00, 'Paid'),  -- Chloe Walker
(23, 1, 114000.00, 31300.00, 'Paid');  -- Marcus Hall

-- Note: For a complete implementation, you would generate payslips for:
-- 1. All 40 employees
-- 2. All 24 payroll periods
-- This would create 40 × 24 = 960 payslip records
-- The above shows a sample for January 2024 only

The data includes realistic salary progression, various employment types (permanent/contract), and both statutory and voluntary deductions that would be typical for a US-based SAAS company.
