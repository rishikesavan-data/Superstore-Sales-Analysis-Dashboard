# 🛒 Project Background

The Superstore dataset represents four years of U.S. retail transactions across multiple product categories and customer segments.
Although widely used, much of this data is often underutilized for real business insight.
This project transforms that raw dataset into a comprehensive business intelligence solution.

The goal of this project is to thoroughly analyze the Superstore dataset and extract actionable insights related to sales performance, profitability, customer behavior, discount impact, and operational risk.

### Insights and recommendations are provided in the following key areas:

- **Sales Trends Analysis:**  Examination of revenue, profit, order volume, and average order value (AOV) across time.

- **Category & Segment Performance:**   Evaluation of high-performing and underperforming categories, segments, and subcategories.

- **Customer Insights:**  Analysis of top clients, buying patterns, and customer contribution to revenue.

- **Discount & Return Impact:** Assessment of profit loss due to heavy discounting and product returns.

- **Risk Analysis:** Identification of loss-making products, return-prone categories, and discount-driven margin erosion.

An interactive Power BI dashboard (Overview, Breakdown, Risk Analysis pages) can be downloaded 
[here](https://github.com/rishikesavan-data/Superstore-Sales-Analysis-Dashboard/blob/main/Sales%20Perfomance%20Analysis%20.pbix)

### The SQL queries used for EDA and preprocessing can be found in:

Initial Data Checks: [here](/SQL%20Queries/01_Initial_Data_Checks.sql)

Cleaning & Preparation: [here](/SQL%20Queries/02_Data_Cleaning_Preparation.sql)

Business Questions: [here](/SQL%20Queries/03_Business_Questions_Analysis.sql.sql)


# 🧱 Data Structure & Initial Checks

The Superstore dataset consists of a single unified table containing order details, customer information, product hierarchy, shipping dates, sales, discounts, profits, and returns.

Key Columns:

**Dimensions:** Order Date, Ship Date, Region, Segment, Category, Subcategory, Customer Name

**Measures:** Sales, Profit, Discount, Quantity, Returned Orders

A series of initial quality checks were performed to validate:

- Row count (9,994 records)

- Duplicate detection

- Null and inconsistent values

- Mixed date formats (mm/dd/yyyy vs dd-mm-yyyy)

- Datatype mismatches preventing SQL import

The SQL scripts for initial checks can be found here.

# 🧹 Data Cleaning & Preparation

Before analysis, the dataset required extensive cleaning:

### Date Format Normalization

*The original file contained inconsistent date formats that caused SQL import failures.*

Steps taken:

- Split date fields by delimiter (/)

- Replaced / with -

- Merged date components into a unified dd-mm-yyyy format

- Converted final dates into yyyy-mm-dd for MySQL compatibility

MySQL Import Cleanup

- Initial import imported only 148 rows due to:

- Incorrect datatypes in schema

- Invalid date strings

- Decimal columns set as DOUBLE instead of DECIMAL

Fixes applied:

- Created custom MySQL schema with proper datatypes

- Reformatted entire dataset and exported to CSV

- Loaded using LOAD DATA INFILE successfully importing all 9,994 rows

The SQL scripts used for cleaning and transformation will be uploaded here
.

# 🧠 Executive Summary
### 📌 Overview of Findings

Superstore's 4 years of sales data reveal clear trends in performance, profitability, discount behavior, and customer contribution.

Key findings include:

- Steady growth in sales, with seasonal peaks toward year-end.

- Technology leads in profit margins, while Furniture shows strong revenue but weaker profitability.

- High discounts significantly erode profit, especially beyond the 30% threshold.

- Certain products and subcategories consistently generate net losses.

- Return rates vary notably by category, directly affecting profit.

Below is the Overview Dashboard from the Power BI report (more visuals included in later sections).

![Overview](/Images/Overview%20Page%20.png)

### 📈 Sales Trends

- Revenue shows cyclical patterns, with noticeable peaks during Q4 months.

- Profit follows a similar trend, though more volatile due to discounts and returns.

- YoY sales growth is positive, with November and December representing the strongest revenue months.

- Average Order Value (AOV) remains relatively stable, showing healthy customer spending habits.

![Sales trend analysis](/images/Sales%20Trend%20Analysis%20View%20.png)

### 📦 Category & Product Performance

- Technology category delivers the highest profit margins (17%+), driven by strong demand and lower return rates.

- Furniture, while contributing significantly to revenue, suffers from lower margins and higher discount sensitivity.

- Office Supplies performs reliably with stable revenue, moderate margins, and low risk.

Product-Level Highlights:

- Several products consistently generate negative profit, primarily due to heavy discounting or frequent returns.

- High-performing products appear in Technology and Office Supplies categories.

![Product Performance Visual](/Images/Product%20Perfomance%20View.png)

### 👥 Customer Insights

- A small group of top customers contributes a disproportionately large share of revenue.

- Customer purchasing behavior varies by segment:

- Corporate segments yield higher AOV

- Consumer segment produces higher volume

- High-value clients tend to remain consistent year over year.

![Top Clients](/images/Top%20Clients%20View%20.png)

### ⚠️ Discount & Return Impact
Discount Analysis:

- Discounts above 30% correlate strongly with profit loss, even when sales volume increases.

- Mid-range discounts (10–20%) show more balanced performance.

Return Analysis:

- Return rates are highest in Technology and Furniture categories.

- Returned profit loss is concentrated in a small set of products.

![Risk](/images/Risk%20Analysis%20Page%20.png)

# 🎯 Recommendations

Based on the insights uncovered:

- Optimize discounting strategy to reduce over-discounting in unprofitable categories.

- Review loss-making products and consider discontinuation or pricing adjustments.

- Improve return management by identifying high-risk products and addressing root causes.

- Focus on high-margin categories (Technology) for growth initiatives.

- Strengthen loyalty programs or segmentation strategies targeting high-value customers.

# 🛠 Tools & Technology

**MySQL** – Data cleaning, transformation, and exploratory analysis

**Power BI** – Data modeling, DAX measures, dashboards

**Power Query** – M language transformations

**Excel** – Preprocessing and format corrections

**AI Assistance (ChatGPT, Gemini)** – Debugging, question refinement, insight polishing

# 🏁 Conclusion

This project transforms raw Superstore sales data into clear, actionable insights through structured cleaning, SQL analysis, and interactive Power BI visualizations. The findings reveal key performance drivers, highlight risks such as discount-driven profit loss, and identify opportunities in high-margin categories and customer segments. Overall, the project demonstrates strong analytical thinking, technical proficiency, and the ability to convert complex data into meaningful business recommendations.
