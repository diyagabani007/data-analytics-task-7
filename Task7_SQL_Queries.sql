-- Old tables delete (if already exist)
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Orders;

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);

-- Insert data into Customers
INSERT INTO Customers VALUES
(1,'Rahul','Surat'),
(2,'Amit','Ahmedabad'),
(3,'Priya','Vadodara');

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    Amount INT
);

-- Insert data into Orders
INSERT INTO Orders VALUES
(101,1,500),
(102,2,1000),
(103,1,700),
(104,3,1200);

-- SELECT Query
SELECT * FROM Customers;

-- JOIN Query
SELECT Customers.CustomerName,
       Orders.Amount
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

-- GROUP BY Query
SELECT CustomerID,
       SUM(Amount) AS TotalAmount
FROM Orders
GROUP BY CustomerID;