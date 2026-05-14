--Top 5 Categories by Revenue
SELECT 
    category, 
    ROUND(SUM(price * quantity), 2) AS total_revenue
FROM ShoppingData
GROUP BY category
ORDER BY total_revenue DESC;

--Monthly Sales Trend Analysis
SELECT 
    FORMAT(invoice_date, 'yyyy-MM') AS month_year,
    COUNT(invoice_no) AS transaction_count,
    ROUND(SUM(price * quantity), 2) AS monthly_revenue
FROM ShoppingData
GROUP BY FORMAT(invoice_date, 'yyyy-MM')
ORDER BY month_year;

--Customer Demographics & Spending Habits
WITH Demographics AS (
    SELECT 
        gender,
        category,
        invoice_no,
        price,
        quantity,
        CASE 
            WHEN age < 30 THEN '18-29'
            WHEN age < 40 THEN '30-39'
            WHEN age < 50 THEN '40-49'
            WHEN age < 60 THEN '50-59'
            ELSE '60+'
        END AS age_group
    FROM ShoppingData
)
SELECT 
    gender,
    age_group,
    category,
    ROUND(SUM(price * quantity), 2) AS total_spent,
    COUNT(invoice_no) AS transaction_count
FROM Demographics
GROUP BY gender, age_group, category
ORDER BY total_spent DESC;

--Payment Method Performance
SELECT 
    payment_method,
    COUNT(invoice_no) AS total_transactions,
    ROUND(AVG(price * quantity), 2) AS average_transaction_value
FROM ShoppingData
GROUP BY payment_method
ORDER BY average_transaction_value DESC;

--Mall Efficiency
SELECT 
    shopping_mall,
    COUNT(invoice_no) AS total_sales,
    ROUND(SUM(price * quantity), 2) AS total_revenue,
    ROUND(SUM(price * quantity) / COUNT(invoice_no), 2) AS revenue_per_sale
FROM ShoppingData
GROUP BY shopping_mall
ORDER BY total_revenue DESC;