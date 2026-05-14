🛍️ Istanbul Mall Shopping Analysis: An End-to-End Study
Transforming Retail Transaction Data into Actionable Business Insights (2021–2023)

🏬 Project Summary
This project demonstrates an end-to-end data analytics workflow, analyzing 99,457 customer transactions across 10 major Istanbul shopping malls. By integrating Excel for data preparation and profit analysis, SQL Server for advanced querying, and Power BI for interactive visualization, the dashboard uncovers key patterns in revenue, customer demographics, and mall performance.

🛠️ The Data Journey (Step-by-Step)
1. Data Preparation & Profit Analysis (Excel)

Cleaning: Verified 99,457 records with zero null values across all columns.
Profit Analysis: Built a dedicated Profit_Analysis sheet calculating Gross Profit using the formula Total Revenue × (1 - Operating Expense%) for all 10 malls.
Structured Output: Organized data across multiple sheets (SalesData, Lists, Growth_Forecast, Product_Master, Revenue_Forecast, Profit_Analysis).

data_overview.png
Figure 1: SalesData sheet showing the cleaned dataset with 99,457 transaction records across 11 columns.

2. Analytical Querying (SQL Server 2022)

Revenue Analysis: Identified top-performing categories with aggregated revenue metrics.
Trend Modeling: Built monthly sales trend queries using FORMAT() for time-series analysis.
Demographic Segmentation: Used CTEs with CASE WHEN logic to group customers into age brackets (18-29, 30-39, 40-49, 50-59, 60+).
Efficiency Metrics: Calculated revenue_per_sale for each mall to measure operational performance.

demographic_analysis.png
Figure 2: CTE-based demographic segmentation query in SQL Server Management Studio, showing results grouped by gender, age group, and category.

3. Interactive Dashboard (Power BI)

Executive Summary Page: KPI cards, income trend, payment method breakdown, top categories, and mall revenue — all filterable by Year, Mall, Category, and Gender.
Customer Demographics Page: Age group & gender analysis, top spending segment, average order value by age, and category revenue by gender.
Dynamic Slicers: All visuals update instantly based on slicer selections.

executive_summary.png
Figure 3: Main dashboard showing ₺251.51M total revenue across 99K transactions with interactive filters for Year, Mall, Category, and Gender.
customer_graphics.png
Figure 4: Demographics page showing spending patterns by age group and gender, with 18-29 identified as the top spending segment.

Technical Stack: SQL Server 2022 (SQL), Power BI (DAX & Power Query), Microsoft Excel.

📈 Key Findings

-Clothing, Shoes, and Technology account for 93% of total revenue (₺239M out of ₺251.51M)
-Mall of Istanbul and Kanyon lead with ₺51M each in total revenue
-18-29 age group generates the highest total spending — driven by transaction frequency, not basket size
-Average order value is consistent across all age groups at ~₺2.53K, indicating age does not influence purchase size
-Female customers outspend male customers in Clothing by 49%
-Cash is the most preferred payment method at 44.69%, followed by Credit Card at 35.12%
-Revenue trend is stable across 3 years with no significant seasonality (~₺9.7M/month average)
