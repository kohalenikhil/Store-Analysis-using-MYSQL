SELECT * FROM store.storeanalysis;

#1 Count the total number of rows in the table:
SELECT COUNT(*) AS TotalRows
FROM storeanalysis;

#2 Calculate the average age of customers:
SELECT AVG(Age) AS AvgAge
FROM storeanalysis;

#3 Retrieve details of orders delivered in December 2022:
SELECT *
FROM storeanalysis
WHERE MONTH = 'December' AND Status = 'Delivered';

#4 Find the total revenue generated from the orders:
SELECT SUM(Amount) AS TotalRevenue
FROM storeanalysis;

#5 Calculate the average amount spent by each age group:
SELECT `AGE GROUP`, AVG(Amount) AS AvgAmount
FROM storeanalysis
GROUP BY `AGE GROUP`; 

#6 Calculate the average amount spent by customers in each city:
SELECT `ship-city`, AVG(Amount) AS AvgAmount
FROM storeanalysis
GROUP BY `ship-city`;

#7 Retrieve the details of the highest revenue-generating order:
SELECT *
FROM storeanalysis
ORDER BY Amount DESC
LIMIT 1;

#8 Identify the top 5 customers who spent the most:
SELECT `Cust ID`, SUM(Amount) AS TotalAmountSpent
FROM storeanalysis
GROUP BY `Cust ID`
ORDER BY TotalAmountSpent DESC
LIMIT 5;

#9 Retrieve orders placed in the state of Maharashtra:
SELECT *
FROM storeanalysis
WHERE `ship-state` = 'MAHARASHTRA';

#10 Calculate the total revenue for each channel:
SELECT Channel, SUM(Amount) AS ChannelRevenue
FROM storeanalysis
GROUP BY Channel;





