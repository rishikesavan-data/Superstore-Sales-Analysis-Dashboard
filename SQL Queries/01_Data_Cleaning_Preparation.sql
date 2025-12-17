-- STEP 1: Create Table Schema (before loading the data)
CREATE TABLE superstore (
    Row_ID INT,
    Order_ID VARCHAR(50),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(50),
    Customer_ID VARCHAR(50),
    Customer_Name VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Postal_Code VARCHAR(20),
    Region VARCHAR(50),
    Product_ID VARCHAR(50),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name VARCHAR(200),
    Sales DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(10,2),
    Profit DECIMAL(10,2)
);

-- STEP 2: Load Data from CSV using LOAD DATA INFILE
-- Make sure the CSV file is placed in:
-- C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\superstore.csv

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/superstore.csv'
INTO TABLE superstore
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- After executing the above command, MySQL successfully loaded all 9,994 rows.


-- STEP 3: Date Format Fixing (if needed after loading)
-- This ensures all dates follow SQL-friendly format (YYYY-MM-DD)

UPDATE superstore
SET Order_Date = STR_TO_DATE(Order_Date, '%d-%m-%Y')
WHERE Order_Date LIKE '%-%-%';

UPDATE superstore
SET Ship_Date = STR_TO_DATE(Ship_Date, '%d-%m-%Y')
WHERE Ship_Date LIKE '%-%-%';


-- STEP 4: Remove rows with missing or invalid values (if any)
DELETE FROM superstore
WHERE Sales IS NULL OR Profit IS NULL;


-- STEP 5: Trim text fields to remove extra spaces
UPDATE superstore SET Category = TRIM(Category);
UPDATE superstore SET Segment = TRIM(Segment);
UPDATE superstore SET Region = TRIM(Region);


-- STEP 6: Validate final row count
SELECT COUNT(*) AS Final_Row_Count FROM superstore;
