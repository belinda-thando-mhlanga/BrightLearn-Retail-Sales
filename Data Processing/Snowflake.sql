SELECT *
FROM RETAIL.SALES.RETAIL_SALES;

-- Q2.Display only the Transaction ID, Date, and Customer ID for all records. 
--Expected output: Transaction ID, Date, Customer ID 
 
SELECT 
    Transaction_ID,
    Date,
    Customer_ID
FROM RETAIL.SALES.RETAIL_SALES;


-- Q3. Display all the distinct product categories in the dataset.
SELECT DISTINCT Product_Category
FROM RETAIL.SALES.RETAIL_SALES;


-- Q4. Display all the distinct gender values in the dataset.
SELECT DISTINCT Gender
FROM RETAIL.SALES.RETAIL_SALES;

-- Q5. Display all transactions where the Age is greater than 40.
SELECT *
FROM RETAIL.SALES.RETAIL_SALES
WHERE Age > 40;

-- Q6. Display all transactions where the Price per Unit is between 100 and 500.
SELECT *
FROM RETAIL.SALES.RETAIL_SALES
WHERE Price_per_Unit BETWEEN 100 AND 500;

-- Q7. Display all transactions where the Product Category is either 'Beauty' or 'Electronics'.
SELECT *
FROM RETAIL.SALES.RETAIL_SALES
WHERE Product_Category IN ('Beauty', 'Electronics');

-- Q8. Display all transactions where the Product Category is not 'Clothing'.
SELECT *
FROM RETAIL.SALES.RETAIL_SALES
WHERE Product_Category <> 'Clothing';

-- Q9. Display all transactions where the Quantity is greater than or equal to 3.
SELECT *
FROM RETAIL.SALES.RETAIL_SALES
WHERE Quantity >= 3;

-- Q10. Count the total number of transactions.
SELECT COUNT(*) AS Total_Transactions
FROM RETAIL.SALES.RETAIL_SALES;

-- Q11. Find the average Age of customers.
SELECT AVG(Age) AS Average_Age
FROM RETAIL.SALES.RETAIL_SALES;

-- Q12. Find the total quantity of products sold.
SELECT SUM(Quantity) AS Total_Quantity
FROM RETAIL.SALES.RETAIL_SALES;

-- Q13. Find the maximum Total Amount spent in a single transaction.
SELECT MAX(Total_Amount) AS Max_Total_Amount
FROM RETAIL.SALES.RETAIL_SALES;

-- Q14. Find the minimum Price per Unit in the dataset.
SELECT MIN(Price_per_Unit) AS Min_Price_per_Unit
FROM RETAIL.SALES.RETAIL_SALES;

-- Q15. Find the number of transactions per Product Category.
SELECT 
    Product_Category,
    COUNT(*) AS Transaction_Count
FROM RETAIL.SALES.RETAIL_SALES
GROUP BY Product_Category;

-- Q16. Find the total revenue (Total Amount) per gender.
SELECT 
    Gender,
    SUM(Total_Amount) AS Total_Revenue
FROM RETAIL.SALES.RETAIL_SALES
GROUP BY Gender;

-- Q17. Find the average Price per Unit per product category.
SELECT 
    Product_Category,
    AVG(Price_per_Unit) AS Average_Price
FROM RETAIL.SALES.RETAIL_SALES
GROUP BY Product_Category;

--Having clause

-- Q18. Find the total revenue per product category where total revenue is greater than 10,000.
SELECT 
    Product_Category,
    SUM(Total_Amount) AS Total_Revenue
FROM RETAIL.SALES.RETAIL_SALES
GROUP BY Product_Category
HAVING SUM(Total_Amount) > 10000;

-- Q19. Find the average quantity per product category where the average is more than 2.
SELECT 
    Product_Category,
    AVG(Quantity) AS Average_Quantity
FROM RETAIL.SALES.RETAIL_SALES
GROUP BY Product_Category
HAVING AVG(Quantity) > 2;


-- 7. CASE Statement

-- Q20. Display a column called Spending_Level that shows 'High' if Total Amount > 1000, otherwise 'Low'.
SELECT 
    Transaction_ID,
    Total_Amount,
    CASE 
        WHEN Total_Amount > 1000 THEN 'High'
        ELSE 'Low'
    END AS Spending_Level
FROM RETAIL.SALES.RETAIL_SALES;

-- Q21. Display a new column called Age_Group that labels customers as:
-- 'Youth' if Age < 30
-- 'Adult' if Age is between 30 and 59
-- 'Senior' if Age >= 60
SELECT 
    Customer_ID,
    Age,
    CASE 
        WHEN Age < 30 THEN 'Youth'
        WHEN Age BETWEEN 30 AND 59 THEN 'Adult'
        WHEN Age >= 60 THEN 'Senior'
    END AS Age_Group
FROM RETAIL.SALES.RETAIL_SALES;
