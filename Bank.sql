#### CREATE DATABASE :: BANK DATABASE
# ========================================================
#==========================================================

CREATE DATABASE BANKDATABASE;

USE BANKDATABASE;

#========================================
  
  # CREATE TABLE 1:: CUSTOMER
  
CREATE TABLE Customer(
Customer_ID INT PRIMARY KEY,
Name VARCHAR(50) ,
Email VARCHAR(50),
Phone VARCHAR(50));

INSERT INTO Customer (Customer_ID, Name, Email, Phone) VALUES
(1, 'John Doe', 'john.doe@example.com', '123-456-7890'),
(2, 'Jane Smith', 'jane.smith@example.com', '456-789-0123'),
(3, 'Michael Johnson', 'michael.johnson@example.com', '789-012-3456'),
(4, 'Emily Davis', 'emily.davis@example.com', '012-345-6789'),
(5, 'Daniel Brown', 'daniel.brown@example.com', '234-567-8901'),
(6, 'Sarah Wilson', 'sarah.wilson@example.com', '567-890-1234'),
(7, 'David Taylor', 'david.taylor@example.com', '890-123-4567'),
(8, 'Jessica Martinez', 'jessica.martinez@example.com', '901-234-5678'),
(9, 'Christopher Anderson', 'christopher.anderson@example.com', '345-678-9012'),
(10, 'Ashley Thomas', 'ashley.thomas@example.com', '678-901-2345'),
(11, 'Matthew Hernandez', 'matthew.hernandez@example.com', '901-234-5678'),
(12, 'Amanda Perez', 'amanda.perez@example.com', '234-567-8901'),
(13, 'James Wilson', 'james.wilson@example.com', '567-890-1234'),
(14, 'Jennifer Lee', 'jennifer.lee@example.com', '890-123-4567'),
(15, 'Ryan Gonzalez', 'ryan.gonzalez@example.com', '012-345-6789'),
(16, 'Elizabeth Moore', 'elizabeth.moore@example.com', '345-678-9012'),
(17, 'David Taylor', 'david.taylor@example.com', '678-901-2345'),
(18, 'Mary Clark', 'mary.clark@example.com', '901-234-5678'),
(19, 'Justin Rodriguez', 'justin.rodriguez@example.com', '234-567-8901'),
(20, 'Linda Lewis', 'linda.lewis@example.com', '567-890-1234'),
(21, 'William Walker', 'william.walker@example.com', '890-123-4567'),
(22, 'Patricia Hall', 'patricia.hall@example.com', '012-345-6789'),
(23, 'Richard Young', 'richard.young@example.com', '345-678-9012'),
(24, 'Karen King', 'karen.king@example.com', '678-901-2345'),
(25, 'Steven Hill', 'steven.hill@example.com', '901-234-5678'),
(26, 'Deborah Scott', 'deborah.scott@example.com', '234-567-8901'),
(27, 'Joseph Green', 'joseph.green@example.com', '567-890-1234'),
(28, 'Barbara Adams', 'barbara.adams@example.com', '890-123-4567'),
(29, 'Daniel Baker', 'daniel.baker@example.com', '012-345-6789'),
(30, 'Lisa Nelson', 'lisa.nelson@example.com', '345-678-9012'),
(31, 'Robert Mitchell', 'robert.mitchell@example.com', '678-901-2345'),
(32, 'Ruth Carter', 'ruth.carter@example.com', '901-234-5678'),
(33, 'Stephen Ramirez', 'stephen.ramirez@example.com', '234-567-8901'),
(34, 'Mildred Turner', 'mildred.turner@example.com', '567-890-1234'),
(35, 'Scott Phillips', 'scott.phillips@example.com', '890-123-4567'),
(36, 'Margaret Campbell', 'margaret.campbell@example.com', '012-345-6789'),
(37, 'Kevin Evans', 'kevin.evans@example.com', '345-678-9012'),
(38, 'Nicole Collins', 'nicole.collins@example.com', '678-901-2345'),
(39, 'Edward Stewart', 'edward.stewart@example.com', '901-234-5678'),
(40, 'Helen Price', 'helen.price@example.com', '234-567-8901');

ALTER TABLE Customer RENAME Column Customer_ID TO CustomerID;

#==================================================================

SELECT * FROM Customer;

####  CREATE TABLE 2 :: Account
CREATE TABLE Account(
AccountID INT PRIMARY KEY,
CustomerID INT,
AccountType VARCHAR(20),
Balance DECIMAL(10,2),
FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID));

INSERT INTO Account (AccountID, CustomerID, AccountType, Balance) VALUES
(1, 1, 'Savings', 1000.00),
(2, 1, 'Checking', 500.00),
(3, 2, 'Savings', 1500.00),
(4, 2, 'Checking', 700.00),
(5, 3, 'Savings', 2000.00),
(6, 3, 'Checking', 800.00),
(7, 4, 'Savings', 1200.00),
(8, 4, 'Checking', 600.00),
(9, 5, 'Savings', 1800.00),
(10, 5, 'Checking', 900.00),
(11, 6, 'Savings', 1600.00),
(12, 6, 'Checking', 750.00),
(13, 7, 'Savings', 1400.00),
(14, 7, 'Checking', 850.00),
(15, 8, 'Savings', 1700.00),
(16, 8, 'Checking', 950.00),
(17, 9, 'Savings', 1900.00),
(18, 9, 'Checking', 1000.00),
(19, 10, 'Savings', 2200.00),
(20, 10, 'Checking', 1100.00),
(21, 11, 'Savings', 2500.00),
(22, 11, 'Checking', 1250.00),
(23, 12, 'Savings', 2700.00),
(24, 12, 'Checking', 1350.00),
(25, 13, 'Savings', 3000.00),
(26, 13, 'Checking', 1500.00),
(27, 14, 'Savings', 2800.00),
(28, 14, 'Checking', 1400.00),
(29, 15, 'Savings', 3200.00),
(30, 15, 'Checking', 1600.00),
(31, 16, 'Savings', 3500.00),
(32, 16, 'Checking', 1750.00),
(33, 17, 'Savings', 3800.00),
(34, 17, 'Checking', 1900.00),
(35, 18, 'Savings', 4000.00),
(36, 18, 'Checking', 2000.00),
(37, 19, 'Savings', 4200.00),
(38, 19, 'Checking', 2100.00),
(39, 20, 'Savings', 4400.00),
(40, 20, 'Checking', 2200.00);

SELECT * FROM Account;

# ====================================================

#     CREATE TABLE 3 :: TRANSACTIONS
CREATE TABLE TRANSACTIONS(
TRANSACTIONID INT PRIMARY KEY,
AccountID INT,
Amount DECIMAL(10,2),
TransactionDate DATE,
Description VARCHAR(20),
FOREIGN KEY (AccountID) REFERENCES Account(AccountID)); 

INSERT INTO Transactions (TransactionID, AccountID, Amount, TransactionDate, Description) VALUES
(1, 1, 100.00, '2024-06-16', 'Deposit'),
(2, 1, 50.00, '2024-06-17', 'Withdrawal'),
(3, 3, 200.00, '2024-06-18', 'Deposit'),
(4, 3, 75.00, '2024-06-19', 'Withdrawal'),
(5, 5, 150.00, '2024-06-20', 'Deposit'),
(6, 5, 100.00, '2024-06-21', 'Withdrawal'),
(7, 7, 300.00, '2024-06-22', 'Deposit'),
(8, 7, 50.00, '2024-06-23', 'Withdrawal'),
(9, 9, 180.00, '2024-06-24', 'Deposit'),
(10, 9, 90.00, '2024-06-25', 'Withdrawal'),
(11, 11, 250.00, '2024-06-26', 'Deposit'),
(12, 11, 125.00, '2024-06-27', 'Withdrawal'),
(13, 13, 320.00, '2024-06-28', 'Deposit'),
(14, 13, 80.00, '2024-06-29', 'Withdrawal'),
(15, 15, 400.00, '2024-06-30', 'Deposit'),
(16, 15, 200.00, '2024-07-16', 'Withdrawal'),
(17, 16, 400.00, '2024-06-15', 'Deposit'),
(18, 16, 200.00, '2024-07-12', 'Withdrawal'),
(19, 17, 400.00, '2024-06-04', 'Deposit'),
(20, 30, 200.00, '2024-12-01', 'Withdrawal'),
(21, 30, 400.00, '2024-11-30', 'Deposit'),
(22, 28, 200.00, '2024-04-01', 'Withdrawal'),
(23, 26, 400.00, '2024-05-30', 'Deposit'),
(24, 27, 200.00, '2024-05-01', 'Withdrawal'),
(25, 34, 400.00, '2024-12-30', 'Deposit'),
(26, 5, 200.00, '2024-10-01', 'Withdrawal');


# ========================================================

## CREATE TABLE 4 :: TRANSACTIONTYPE
CREATE TABLE TRANSACTIONTYPE(
TransactionTypeID INT PRIMARY KEY,
Name VARCHAR(50),
Description VARCHAR(200));

INSERT INTO TransactionType (TransactionTypeID, Name, Description) VALUES
(1, 'Deposit', 'Adding funds to the account'),
(2, 'Withdrawal', 'Removing funds from the account'),
(3, 'Transfer', 'Transferring funds between accounts');

# ======================================================================

### CREATE TABLE 5 :: Billpayment

CREATE TABLE BillPayment(
Payment INT PRIMARY KEY,
CustomerID INT,
PayeeName VARCHAR(100),
Amount DECIMAL(10,2),
PaymentDate DATE,
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID));

ALTER TABLE Billpayment RENAME COLUMN Payment To PaymentID;

INSERT INTO BillPayment (PaymentID, CustomerID, PayeeName, Amount, PaymentDate) VALUES
(1, 1, 'Utility Company', 100.00, '2024-06-16'),
(2, 2, 'Credit Card Company', 50.00, '2024-06-17'),
(3, 3, 'Internet Provider', 75.00, '2024-06-18'),
(4, 4, 'Phone Service Provider', 120.00, '2024-06-19'),
(5, 5, 'Insurance Company', 200.00, '2024-06-20'),
(6, 6, 'Mortgage Company', 500.00, '2024-06-21'),
(7, 7, 'Medical Services', 150.00, '2024-06-22'),
(8, 8, 'Rent', 800.00, '2024-06-23'),
(9, 9, 'Car Loan', 300.00, '2024-06-24'),
(10, 10, 'Student Loan', 250.00, '2024-06-25');

# ===================================================================

SELECT * FROM Billpayment;

### CREATE TABLE 6 :: LOAN 

CREATE TABLE Loan (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    LoanAmount DECIMAL(10, 2),
    InterestRate DECIMAL(5, 2),
    RepaymentTerm INT, -- in months, for example
    StartDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

INSERT INTO Loan (LoanID, CustomerID, LoanAmount, InterestRate, RepaymentTerm, StartDate) VALUES
(1, 1, 10000.00, 5.00, 36, '2024-06-16'),
(2, 2, 15000.00, 6.00, 48, '2024-06-17'),
(3, 3, 20000.00, 4.50, 60, '2024-06-18'),
(4, 4, 12000.00, 5.25, 36, '2024-06-19'),
(5, 5, 18000.00, 6.50, 48, '2024-06-20'),
(6, 6, 25000.00, 4.75, 60, '2024-06-21'),
(7, 7, 30000.00, 5.75, 36, '2024-06-22'),
(8, 8, 40000.00, 6.25, 48, '2024-06-23'),
(9, 9, 20000.00, 4.25, 60, '2024-06-24'),
(10, 10, 35000.00, 5.50, 36, '2024-06-25');

# ========================================================

### 1. RETRIVE ALL THE INFORMATION OF THE TABLES ?

SHOW TABLES;
SELECT * FROM account;
SELECT * FROM billpayment;
SELECT * FROM Customer;
SELECT * FROm Loan;
SELECT * FROM Transactions;
SELECT * FROM TransactionType;

### 2.Retrieve customer information along with their accounts:
SELECT c.*,a.AccountID,a.AccountType,a.Balance FROM Customer c JOIN Account a ON c.customerID=a.CustomerID;

###  3. Retrieve transactions along with account and customer information:
SELECT C.*,T.TRANSACTIONTYPEID,T.Amount,T.Description FROM Customer C JOIN Account A ON c.CustomerID=A.CustomerID
JOIN Transactions T ON A.AccountID=T.AccountID;

### 4.Calculate the total balance for each customer:
SELECT C.CustomerID,C.Name,SUM(A.Balance) AS TOTALBALANCE FROM Customer C JOIN Account A ON C.customerID=A.CustomerID GROUP BY C.customerID;

### 5.Calculate the total amount of bill payments made by each customer:
SELECT c.CustomerID,C.Name,SUM(B.Amount) AS SUMOFBILLPAYMENT FROM Customer C JOIN Billpayment b on C.customerID=B.CustomerID GROUP BY CustomerId;

### 6.Calculate the total loan amount and average interest rate for each customer:
SELECT c.Customerid,c.Name,SUM(L.LoanAmount) AS TLA,AVG(L.InterestRate) AS TIR FROM Customer c JOIN LOAN L on c.CustomerID=L.CustomerID GROUP BY c.Customerid,c.Name;

### 7.List customers with their respective loan details:
SELECT C.customerID,C.Name,L.* FROM Customer c JOIN Loan L ON c.CustomerID=l.CustomerID;

### 8.Retrieve all transactions for a specific customer (e.g., CustomerID = 1):
SELECT C.Name,C.CustomerID,T.* FROM CUSTOMER c JOIN ACCOUNT A ON C.customerID=A.CustomerID
JOIN TRANSACTIONS T ON A.AccountID=T.AccountID WHERE C.CustomerID=1;

### 9. List all customers who have made a bill payment over a certain amount (e.g., $100):
SELECT * FROM Billpayment;
SELECT C.CustomerID,C.Name,B.Amount FROM Customer C JOIN Billpayment B On c.CustomerId=B.CustomerID WHERE B.Amount>100;

### 10.Find the average balance for each account type:
SELECT * FROM ACCOUNT;
SELECT AccountType,AVG(Balance) FROM ACCOUNT GROUP BY AccountType;

### 11.Find the highest and lowest balance for each account type:
SELECT AccountType,MAX(Balance) HIGHESTBALANCE,MIN(Balance) LOWESTBALANCE FROM ACCOUNT GROUP BY Accounttype;

### 12.Retrieve the details of customers who have more than one account:
SELECT C.customerID,C.Name,COUNT(A.AccountID) AS NUMBEROFACCOUNT
 FROM CUstomer C JOIN Account A ON C.customerID=A.CustomerID GROUP BY C.customerID,C.Name HAVING COUNT(A.AccountID)>1;
 
 ### 13.List all customers who have taken out a loan with an interest rate above 5%:
 SELECT * FROM CUSTOMER;
 SELECT * FROm Loan;
 SELECT C.Name FROM Customer C Join Loan L ON C.customerID=L.CustomerID  WHERE InterestRate>5.00;
 
 ### 14.Find the total number of transactions for each account:
 SELECT * FROM Transactions;
 SELECT AccountID,COUNT(TRANSACTIONTYPEID) AS TOTAL_NUMBER_OF_TRANSACTION FROM Transactions GROUP BY AccountID;

### 15.Find the customers who have made the highest and lowest bill payments:

SELECT C.Name,Max(B.Amount) AS MAXBILLpayement 
FROM Customer C JOIN Billpayment B On C.CustomerID=B.CustomerID GROUP BY C.Name ORDER BY MAXBILLpayement DESC LIMIT  1;

SELECT C.Name,Min(B.Amount) AS MINBILLpayement 
FROM Customer C JOIN Billpayment B On C.CustomerID=B.CustomerID GROUP BY C.Name ORDER BY MINBILLpayement  LIMIT  1;

### 16. Retrieve the total amount of loans and average repayment term for each customer:
SELECT * FROM LOAN;
SELECT C.CustomerID,C.Name,SUM(L.LoanAmount) AS TOTAL_LOAN_AMOUNT ,AVG(L.RepaymentTerm) AS AVERAGE_REPAYMENT_TERM 
FROM Customer C JOIN LOAN L ON C.CustomerID=L.CustomerID 
GROUP BY C.CustomerID,C.Name;

### 17.Retrieve all transactions for a specific account (e.g., AccountID = 3):
SELECT * FROM TRANSACTIONS;
SELECT Description AS TransactionType  FROM TRANSACTIONS WHERE   AccountID = 1;

### !8. List the top 5 customers with the highest total balance across all their accounts:
SELECT C.customerID,C.Name ,SUM(A.Balance) AS TOTAL_BALANCE
 FROM Customer C JOIN ACCOUNT A  ON C.customerID=A.CustomerID GROUP BY C.customerID,C.Name ORDER BY TOTAL_BALANCE DESC  LIMIT 5;




 








