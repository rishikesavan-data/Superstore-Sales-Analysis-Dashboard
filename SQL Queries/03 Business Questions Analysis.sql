-- Total Sales, Profit, Quantity
SELECT 
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM superstore;

-- Sales trend by month
SELECT 
    DATE_FORMAT(Order_Date, '%Y-%m') AS Month,
    SUM(Sales) AS Monthly_Sales,
    SUM(Profit) AS Monthly_Profit
FROM superstore
GROUP BY Month
ORDER BY Month;

-- Sales by Category
SELECT Category, 
    SUM(Sales) AS Sales, 
    SUM(Profit) AS Profit
FROM superstore
GROUP BY Category
ORDER BY Sales DESC;

-- Sales by Subcategory
SELECT Sub_Category, 
    SUM(Sales) AS Sales, 
    SUM(Profit) AS Profit
FROM superstore
GROUP BY Sub_Category
ORDER BY Profit DESC;

-- Top 10 customers by Sales
SELECT Customer_Name, 
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Discount impact on profit
SELECT 
    Discount,
    SUM(Sales) AS Sales,
    SUM(Profit) AS Profit
FROM superstore
GROUP BY Discount
ORDER BY Discount;

-- Loss-making products
SELECT Product_Name, 
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Product_Name
HAVING Total_Profit < 0
ORDER BY Total_Profit ASC;

-- Returned orders impact
SELECT 
    Category,
    COUNT(*) AS Returned_Count,
    SUM(Profit) AS Profit_Loss
FROM superstore
WHERE Profit < 0
GROUP BY Category
ORDER BY Profit_Loss ASC;
