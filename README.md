# 📊 Task 6: Sales Trend Analysis Using Aggregations

## 🎯 Objective
Analyze **monthly revenue** and **order volume** using SQL aggregation techniques.  
This task helped me understand how to group data by date, use aggregate functions, and sort results effectively in SQL.

---

## 🗂 Dataset
**File:** `online_sales.csv`  
**Table:** `online_sales`

### Columns:
- `order_id` (VARCHAR)
- `order_date` (DATE)
- `product_id` (VARCHAR)
- `amount` (DECIMAL) — represents the order amount (revenue)

---

## 🛠 Tools Used
- MySQL (Workbench)
- GitHub

---

## 🧠 Concepts Practiced
- `GROUP BY` for month and year
- `EXTRACT()` function for date parts
- Aggregation functions: `SUM()`, `COUNT(DISTINCT)`
- Sorting using `ORDER BY`
- Filtering top results using `LIMIT`

---

## 📌 SQL Queries Used

### 1. Monthly Revenue
```sql
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
```
### 2. Monthly Order Volume
```
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
```

###3. Top 3 Months by Revenue
```
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;
```
