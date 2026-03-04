# 🛒 Project Background

The Superstore dataset is based on a fictional retail company that represents four years of U.S. retail transactions across multiple product categories and customer segments.
Although widely used, much of this data is often underutilized for real business insight.
This project transforms the raw dataset into a comprehensive business intelligence solution.

The goal of this project is to thoroughly analyze the Superstore dataset and extract actionable insights related to sales performance, profitability, customer behavior, discount impact, and operational risk.

### Insights and recommendations are provided in the following key areas:

- **Sales Trends Analysis:**  Examination of revenue, profit, order volume, and average order value (AOV) across time.

- **Category & Segment Performance:**   Evaluation of high-performing and underperforming categories, segments, and subcategories.

- **Customer Insights:**  Analysis of top clients, buying patterns, and customer contribution to revenue.

- **Discount & Return Impact:** Assessment of profit loss due to heavy discounting and product returns.

- **Risk Analysis:** Identification of loss-making products, return-prone categories, and discount-driven margin erosion.

An interactive Power BI dashboard (Overview, Breakdown, Risk Analysis pages) can be downloaded 
[here](https://github.com/rishikesavan-data/Superstore-Sales-Analysis-Dashboard/raw/main/Sales%20Perfomance%20Analysis%20.pbix)

### The SQL queries used for EDA and preprocessing can be found in:

Initial Data Checks: [here](https://github.com/rishikesavan-data/Superstore-Sales-Perfomance-Analysis/blob/main/SQL%20Queries/02%20Data%20Checks.sql)

Cleaning & Preparation: [here](https://github.com/rishikesavan-data/Superstore-Sales-Perfomance-Analysis/blob/main/SQL%20Queries/01%20Data%20Cleaning%20Preparation.sql)

Business Questions: [here](https://github.com/rishikesavan-data/Superstore-Sales-Perfomance-Analysis/blob/main/SQL%20Queries/03%20Business%20Questions%20Analysis.sql)


# 🧠 Executive Summary
### 📌 Overview of Findings

Superstore's 4 years of sales data reveal clear trends in performance, profitability, discount behavior, and customer contribution.

Key findings include:

- Steady growth in sales, with seasonal peaks toward year-end.

- Technology leads in profit margins, while Furniture shows strong revenue but weaker profitability.

- High discounts significantly erode profit, especially beyond the 30% threshold.

- Certain products and subcategories consistently generate net losses.

- Return rates vary notably by category, directly affecting profit.

Below is the Overview Dashboard from the Power BI report (with additional visuals in later sections).

![Overview](https://github.com/rishikesavan-data/Superstore-Sales-Perfomance-Analysis/blob/main/Images/Page%201%20Overview.png)

### 📈 Sales Trends

- Revenue shows cyclical patterns, with noticeable peaks during Q4 months.

- Profit follows a similar trend, though more volatile due to discounts and returns.

- YoY sales growth is positive, with November and December representing the strongest revenue months.

- Average Order Value (AOV) remains relatively stable, showing healthy customer spending habits.

![YoY trend analysis](https://github.com/rishikesavan-data/Superstore-Sales-Perfomance-Analysis/blob/main/Images/YoY%20Sales%20Trend%20View.png)

### 📦 Category & Product Performance

- Technology category delivers the highest profit margins (17%+), driven by strong demand and lower return rates.

- Furniture, while contributing significantly to revenue, suffers from lower margins and higher discount sensitivity.

- Office Supplies performs reliably with stable revenue, moderate margins, and low risk.

Product-Level Highlights:

- Several products consistently generate negative profit, primarily due to heavy discounting or frequent returns.

- High-performing products appear in the Technology and Office Supplies categories.

![Product Performance Visual](https://github.com/rishikesavan-data/Superstore-Sales-Perfomance-Analysis/blob/main/Images/Product%20Perfomance%20View.png)

### 👥 Customer Insights

- A small group of top customers contributes a disproportionately large share of revenue.

- Customer purchasing behavior varies by segment:

- Corporate segments yield higher AOV

- Consumer segment produces higher volume

- High-value clients tend to remain consistent year over year.

![Top Clients](https://github.com/rishikesavan-data/Superstore-Sales-Perfomance-Analysis/blob/main/Images/Top%20Clients%20View%20.png)

### ⚠️ Discount & Return Impact
Discount Analysis:

- Discounts above 30% correlate strongly with profit loss, even when sales volume increases.

- Mid-range discounts (10–20%) show more balanced performance.

Return Analysis:

- Return rates are highest in the Technology and Furniture categories.

- Returned profit loss is concentrated in a small set of products.

![Risk](https://github.com/rishikesavan-data/Superstore-Sales-Perfomance-Analysis/blob/main/Images/Page%203.0%20Risk%20Analysis%20.png)

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
