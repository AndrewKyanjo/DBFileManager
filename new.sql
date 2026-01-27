-- 1️⃣ Departments Table
CREATE TABLE Departments (
    DepartmentID INT IDENTITY(1,1) PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    ManagerID INT NULL,
    Budget DECIMAL(18,2) NULL,
    Location VARCHAR(100) NOT NULL,
    PhoneExtension VARCHAR(10),
    CreatedDate DATE DEFAULT GETDATE()
);
-- 2️⃣ Employees Table
CREATE TABLE Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M','F')),
    DateOfBirth DATE NOT NULL,
    HireDate DATE NOT NULL,
    DepartmentID INT NOT NULL,
    JobTitle VARCHAR(100),
    EmploymentType VARCHAR(20) CHECK (EmploymentType IN ('Permanent','Contract')),
    IsActive BIT DEFAULT 1,

    CONSTRAINT FK_Employees_Departments
        FOREIGN KEY (DepartmentID)
        REFERENCES Departments(DepartmentID)
);
-- 3️⃣ SalaryStructures Table

CREATE TABLE SalaryStructures (
    SalaryStructureID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT NOT NULL,
    BasicSalary DECIMAL(18,2) NOT NULL,
    HousingAllowance DECIMAL(18,2) DEFAULT 0,
    TransportAllowance DECIMAL(18,2) DEFAULT 0,
    MedicalAllowance DECIMAL(18,2) DEFAULT 0,
    EffectiveFrom DATE NOT NULL,
    EffectiveTo DATE NULL,
    IsCurrent BIT DEFAULT 1,

    CONSTRAINT FK_SalaryStructures_Employees
        FOREIGN KEY (EmployeeID)
        REFERENCES Employees(EmployeeID)
);
-- 4️⃣ Deductions Table
CREATE TABLE Deductions (
    DeductionID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT NOT NULL,
    DeductionType VARCHAR(50) NOT NULL,
    Amount DECIMAL(18,2) DEFAULT 0,
    Percentage DECIMAL(5,2) NULL,
    IsStatutory BIT DEFAULT 0,
    StartDate DATE NOT NULL,
    EndDate DATE NULL,

    CONSTRAINT FK_Deductions_Employees
        FOREIGN KEY (EmployeeID)
        REFERENCES Employees(EmployeeID)
);
--5️⃣ PayrollPeriods Table
CREATE TABLE PayrollPeriods (
    PayrollPeriodID INT IDENTITY(1,1) PRIMARY KEY,
    PeriodName VARCHAR(50) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    PaymentDate DATE NOT NULL,
    IsClosed BIT DEFAULT 0,
    CreatedBy VARCHAR(50) NOT NULL
);
--6️⃣ Payslips Table
CREATE TABLE Payslips (
    PayslipID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT NOT NULL,
    PayrollPeriodID INT NOT NULL,
    GrossPay DECIMAL(18,2) NOT NULL,
    TotalDeductions DECIMAL(18,2) NOT NULL,
    NetPay AS (GrossPay - TotalDeductions) PERSISTED,
    GeneratedDate DATETIME DEFAULT GETDATE(),
    PaymentStatus VARCHAR(20) CHECK (PaymentStatus IN ('Paid','Pending')),

    CONSTRAINT FK_Payslips_Employees
        FOREIGN KEY (EmployeeID)
        REFERENCES Employees(EmployeeID),

    CONSTRAINT FK_Payslips_PayrollPeriods
        FOREIGN KEY (PayrollPeriodID)
        REFERENCES PayrollPeriods(PayrollPeriodID)
);



