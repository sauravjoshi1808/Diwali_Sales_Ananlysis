-- 1. Create the Diwali Sales Table
CREATE TABLE diwali_sales (
    User_ID INT,
    Gender VARCHAR(10),
    Age VARCHAR(20),
    Marital_Status INT,
    Occupation INT,
    City_Category CHAR(1),
    Product_ID VARCHAR(20),
    Product_Category VARCHAR(50),
    Purchase INT,
    State VARCHAR(50)
);

-- 2. Insert Sample Data
INSERT INTO diwali_sales VALUES
(1001, 'Male', '26-35', 1, 7, 'A', 'P001', 'Electronics', 15000, 'Maharashtra'),
(1002, 'Female', '18-25', 0, 3, 'B', 'P002', 'Clothing', 8000, 'Karnataka'),
(1003, 'Male', '36-45', 1, 12, 'C', 'P003', 'Home Decor', 12000, 'Uttar Pradesh'),
(1004, 'Female', '26-35', 0, 1, 'A', 'P004', 'Footwear', 4000, 'Delhi'),
(1005, 'Male', '46-50', 1, 10, 'B', 'P005', 'Electronics', 17000, 'Gujarat');

-- 3. Total Sales by State
SELECT State, SUM(Purchase) AS Total_Sales
FROM diwali_sales
GROUP BY State
ORDER BY Total_Sales DESC;

-- 4. Customer Count by Gender
SELECT Gender, COUNT(DISTINCT User_ID) AS Total_Customers
FROM diwali_sales
GROUP BY Gender;

-- 5. Average Purchase by Age Group
SELECT Age, AVG(Purchase) AS Avg_Purchase
FROM diwali_sales
GROUP BY Age
ORDER BY Avg_Purchase DESC;

-- 6. Top Selling Product Categories
SELECT Product_Category, SUM(Purchase) AS Category_Sales
FROM diwali_sales
GROUP BY Product_Category
ORDER BY Category_Sales DESC;

-- 7. Purchase Behavior by Marital Status
SELECT Marital_Status, AVG(Purchase) AS Avg_Spend
FROM diwali_sales
GROUP BY Marital_Status;

-- 8. Purchases by City Category
SELECT City_Category, SUM(Purchase) AS Total_Purchase
FROM diwali_sales
GROUP BY City_Category;

-- 9. Highest Spending Customers
SELECT User_ID, SUM(Purchase) AS Total_Spent
FROM diwali_sales
GROUP BY User_ID
ORDER BY Total_Spent DESC
LIMIT 5;
