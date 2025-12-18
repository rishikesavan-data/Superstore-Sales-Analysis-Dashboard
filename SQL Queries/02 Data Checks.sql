-- Row Count
SELECT COUNT(*) AS Total_Rows FROM superstore;

-- Check for Duplicate Order IDs
SELECT Order_ID, COUNT(*) 
FROM superstore
GROUP BY Order_ID
HAVING COUNT(*) > 1;

-- Check for NULL values in important fields
SELECT 
    SUM(CASE WHEN Order_ID IS NULL THEN 1 END) AS Null_Order_ID,
    SUM(CASE WHEN Order_Date IS NULL THEN 1 END) AS Null_Order_Date,
    SUM(CASE WHEN Sales IS NULL THEN 1 END) AS Null_Sales,
    SUM(CASE WHEN Profit IS NULL THEN 1 END) AS Null_Profit
FROM superstore;

-- Check distinct categories and segments
SELECT DISTINCT Category FROM superstore;
SELECT DISTINCT Segment FROM superstore;
SELECT DISTINCT Region FROM superstore;

-- Check date format issues
SELECT Order_ID, Order_Date 
FROM superstore
WHERE Order_Date NOT REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$';

-- Summary statistics
SELECT 
    MIN(Sales) AS Min_Sales,
    MAX(Sales) AS Max_Sales,
    AVG(Sales) AS Avg_Sales,
    MIN(Profit) AS Min_Profit,
    MAX(Profit) AS Max_Profit,
    AVG(Profit) AS Avg_Profit
FROM superstore;
