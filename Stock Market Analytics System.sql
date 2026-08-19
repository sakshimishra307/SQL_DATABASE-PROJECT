create database stock_market_db;
use stock_market_db;

create table Companies(
company_id INT PRIMARY KEY AUTO_INCREMENT,
company_name varchar(100),
symbol varchar(20),
sector varchar (60)
);

create table Stock_Prices(
price_id INT PRIMARY KEY AUTO_INCREMENT ,                                               
company_id  int ,
trading_date  date,
open_price  DECIMAL(10,2),
high_price  DECIMAL(10,2),
low_price DECIMAL(10,2),
close_price  DECIMAL(10,2),
volume  bigint ,
foreign key (company_id) references companies(company_id)
);

create table Investors(
investor_id INT PRIMARY KEY AUTO_INCREMENT,
investor_name varchar (100),
city varchar (50)
);

 create table Transactions(
transaction_id INT PRIMARY KEY AUTO_INCREMENT,
investor_id int ,
company_id int ,
transaction_date date,
transaction_type  varchar(30),
quantity decimal (10,2),
price int ,

foreign key(investor_id) references Investors(investor_id),
 FOREIGN KEY (company_id) REFERENCES Companies(company_id)
);


INSERT INTO Companies (company_name, symbol, sector) VALUES 
('Tata Consultancy Services', 'TCS', 'IT'),
 ('Infosys', 'INFY', 'IT'), 
 ('Reliance Industries', 'RELIANCE', 'Energy'), 
 ('HDFC Bank', 'HDFCBANK', 'Banking'), 
 ('ICICI Bank', 'ICICIBANK', 'Banking'), 
 ('ITC Limited', 'ITC', 'FMCG'), 
 ('Hindustan Unilever', 'HUL', 'FMCG'), 
 ('Larsen & Toubro', 'LT', 'Infrastructure'), 
 ('Bharti Airtel', 'AIRTEL', 'Telecom'), 
 ('State Bank of India', 'SBIN', 'Banking');
 
 INSERT INTO Investors (investor_name, city) VALUES 
 ('Rahul Sharma', 'Pune'), 
 ('Amit Patel', 'Mumbai'),
 ('Priya Singh', 'Delhi'),
 ('Neha Verma', 'Bangalore'),
 ('Rohit Mehta', 'Ahmedabad'), 
 ('Sneha Joshi', 'Pune'), 
 ('Karan Shah', 'Mumbai'), 
 ('Anjali Gupta', 'Delhi');

INSERT INTO Stock_Prices
(company_id, trading_date, open_price, high_price, low_price, close_price, volume)
VALUES
--  TCS
(1, '2026-01-05', 3200.00, 3250.00, 3180.00, 3235.00, 1250000),
(1, '2026-01-06', 3235.00, 3280.00, 3210.00, 3265.00, 1380000),
(1, '2026-01-07', 3265.00, 3300.00, 3240.00, 3290.00, 1420000),
(1, '2026-01-08', 3290.00, 3315.00, 3260.00, 3275.00, 1190000),
-- INFOSYS
(2, '2026-01-05', 1850.00, 1880.00, 1835.00, 1870.00, 2100000),
(2, '2026-01-06', 1870.00, 1905.00, 1860.00, 1895.00, 2250000),
(2, '2026-01-07', 1895.00, 1920.00, 1880.00, 1910.00, 1980000),
(2, '2026-01-08', 1910.00, 1935.00, 1890.00, 1925.00, 2340000),
-- RELIANCE
(3, '2026-01-05', 2450.00, 2480.00, 2425.00, 2470.00, 3200000),
(3, '2026-01-06', 2470.00, 2510.00, 2450.00, 2495.00, 3450000),
(3, '2026-01-07', 2495.00, 2530.00, 2480.00, 2515.00, 3650000),
(3, '2026-01-08', 2515.00, 2545.00, 2490.00, 2525.00, 3100000),
-- HDFC BANK
(4, '2026-01-05', 1680.00, 1705.00, 1665.00, 1695.00, 2800000),
(4, '2026-01-06', 1695.00, 1720.00, 1680.00, 1710.00, 2950000),
(4, '2026-01-07', 1710.00, 1735.00, 1695.00, 1725.00, 3100000),
(4, '2026-01-08', 1725.00, 1740.00, 1705.00, 1715.00, 2700000),
-- ICICI BANK
(5, '2026-01-05', 1250.00, 1270.00, 1235.00, 1265.00, 2500000),
(5, '2026-01-06', 1265.00, 1290.00, 1250.00, 1280.00, 2750000),
(5, '2026-01-07', 1280.00, 1305.00, 1265.00, 1295.00, 2900000),
(5, '2026-01-08', 1295.00, 1310.00, 1280.00, 1300.00, 3050000),
-- ITC
(6, '2026-01-05', 450.00, 458.00, 447.00, 455.00, 4200000),
(6, '2026-01-06', 455.00, 462.00, 452.00, 460.00, 4500000),
(6, '2026-01-07', 460.00, 465.00, 456.00, 462.00, 4350000),
(6, '2026-01-08', 462.00, 468.00, 459.00, 466.00, 4700000),
-- HUL
(7, '2026-01-05', 2380.00, 2410.00, 2360.00, 2400.00, 1100000),
(7, '2026-01-06', 2400.00, 2430.00, 2385.00, 2420.00, 1250000),
(7, '2026-01-07', 2420.00, 2450.00, 2400.00, 2440.00, 1300000),
(7, '2026-01-08', 2440.00, 2460.00, 2420.00, 2435.00, 1180000),
-- L&T
(8, '2026-01-05', 3650.00, 3700.00, 3620.00, 3680.00, 1450000),
(8, '2026-01-06', 3680.00, 3730.00, 3660.00, 3710.00, 1520000),
(8, '2026-01-07', 3710.00, 3750.00, 3690.00, 3740.00, 1600000),
(8, '2026-01-08', 3740.00, 3780.00, 3720.00, 3765.00, 1720000),
-- AIRTEL
(9, '2026-01-05', 1720.00, 1750.00, 1700.00, 1740.00, 1800000),
(9, '2026-01-06', 1740.00, 1775.00, 1725.00, 1760.00, 1950000),
(9, '2026-01-07', 1760.00, 1790.00, 1745.00, 1780.00, 2050000),
(9, '2026-01-08', 1780.00, 1810.00, 1765.00, 1800.00, 2200000),
-- SBI
(10, '2026-01-05', 820.00, 835.00, 810.00, 830.00, 3500000),
(10, '2026-01-06', 830.00, 850.00, 825.00, 845.00, 3800000),
(10, '2026-01-07', 845.00, 860.00, 840.00, 855.00, 4000000),
(10, '2026-01-08', 855.00, 870.00, 850.00, 865.00, 4200000);


INSERT INTO Transactions
(investor_id, company_id, transaction_date, transaction_type, quantity, price)
VALUES (1, 1, '2026-01-05', 'BUY', 10, 3200.00),
	   (1, 2, '2026-01-06', 'BUY', 15, 1850.00),
	   (1, 3, '2026-01-07', 'SELL', 5, 2470.00),
       (2, 3, '2026-01-05', 'BUY', 20, 2450.00),
	   (2, 4, '2026-01-06', 'BUY', 10, 1680.00),
       (2, 5, '2026-01-07', 'SELL', 8, 1265.00),
       (3, 6, '2026-01-05', 'BUY', 50, 450.00),
       (3, 7, '2026-01-06', 'BUY', 10, 2380.00),
       (3, 10, '2026-01-07', 'SELL', 15, 830.00),
      (4, 8, '2026-01-05', 'BUY', 12, 3650.00),
      (4, 9, '2026-01-06', 'BUY', 20, 1720.00),
      (5, 1, '2026-01-05', 'BUY', 8, 3235.00),
      (5, 5, '2026-01-06', 'BUY', 15, 1250.00),
      (6, 2, '2026-01-05', 'SELL', 10, 1870.00),
      (6, 6, '2026-01-06', 'BUY', 40, 455.00),
      (7, 4, '2026-01-05', 'BUY', 15, 1695.00),
     (7, 10, '2026-01-06', 'BUY', 25, 845.00),
     (8, 3, '2026-01-05', 'BUY', 10, 2495.00),
     (8, 9, '2026-01-06', 'SELL', 5, 1780.00);

SELECT * FROM Companies;

SELECT * FROM Investors;

SELECT * FROM Stock_Prices;

SELECT * FROM Transactions;


--  Question(1)Display all companies from the Companies table.
SELECT * FROM Companies;

  -- Question(2) Display only the company name, symbol, and sector from the Companies table.
select company_name, symbol, sector from Companies;

--  Question 3 — Basic WHERE
-- Find all companies that belong to the Banking sector.
select* from Companies Where sector = 'Banking' ;

 -- Question 4 Try this now
-- Find all stock price records where the closing price is greater than 2000.
SELECT company_id, trading_date, close_price FROM Stock_Prices WHERE close_price > 2000 ;

--  Question 5 — ORDER BY
-- from the Stock_Prices table, find the 5 records with the highest closing price.
SELECT company_id, trading_date, close_price FROM Stock_Prices order by close_price desc LIMIT 5 ;

-- Question 6 — Aggregate Function
-- Find the highest closing price and the lowest closing price from the entire Stock_Prices table.
SELECT max(close_price) FROM Stock_Prices;
SELECT min(close_price) FROM Stock_Prices;

-- Question 7 — AVG()
-- Now calculate the average closing price of all records in Stock_Prices.
select avg(close_price) AS average_close_price
from stock_prices ;

--  Question 8 — COUNT()
-- How many stock price records are present in the Stock_Prices table?
select count(price_id) from stock_prices

-- Next Question 9 — GROUP BY
 --  How many stock price records are available for each company
SELECT company_id, COUNT(price_id) AS number_of_records
FROM Stock_Prices
GROUP BY company_id;

-- How many investors are present in the Investors table?
SELECT COUNT(investor_name)
FROM Investors;

-- Question 11 — GROUP BY (easy)
-- How many investors are there in each city?
SELECT city, COUNT(investor_id) AS number_of_investors
FROM Investors
GROUP BY city;

-- Question 12 — GROUP BY + AVG()
-- Find the average closing price for each company.
SELECT 
    company_id,
    AVG(close_price) AS average_close_price
FROM Stock_Prices
GROUP BY company_id;


