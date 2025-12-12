# 📊 Retail Data Warehouse & Advanced Analytics

![SQL Server](https://img.shields.io/badge/Database-SQL_Server-CC2927?style=for-the-badge&logo=microsoft-sql-server)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

## 📖 Project Overview
This project involves building a **Retail Data Warehouse** from scratch and performing **Exploratory Data Analysis (EDA)** and **Advanced Analytics** to derive actionable business insights. 

Using **Microsoft SQL Server**, the project covers the full data pipeline:
1.  **Database Design:** Creating a Star Schema (`gold` schema) with Fact and Dimension tables.
2.  **ETL:** Bulk inserting raw CSV data into the structured warehouse.
3.  **EDA:** Understanding data distribution, date ranges, and key metrics.
4.  **Advanced Analytics:** Customer segmentation, Year-over-Year (YoY) growth, and Part-to-Whole analysis using Window Functions.

## 🗂️ Database Schema
The project uses a **Star Schema** architecture optimized for analytics:
* **`gold.fact_sales`**: The central table containing transactional data (Sales, Quantity, Price).
* **`gold.dim_customers`**: Dimension table for customer demographics (Gender, Country, Marital Status).
* **`gold.dim_products`**: Dimension table for product details (Category, Subcategory, Cost).

## 🚀 Key Business Problems Solved
The SQL scripts in this repository answer the following critical business questions:

### 1. Key Performance Indicators (KPIs)
* What are the total sales, total quantity sold, and average price across all orders?
* How many unique customers and products are in the system?

### 2. Customer Analysis & Segmentation
* **VIP vs. Regular:** Segregated customers into 'VIP', 'Regular', and 'New' categories based on spending thresholds (>5000) and account tenure (>12 months).
* **Demographics:** Analyzed customer distribution by Country and Gender.
* **Top Spenders:** Identified the top 10 customers by total revenue.

### 3. Product Performance
* **Category Analysis:** Which product categories have the highest average cost?
* **Pareto Principle:** Calculated the "Part-to-Whole" percentage to see how much each category contributes to overall sales.
* **Ranking:** Identified the Top 5 best-selling and Worst 5 selling products.

### 4. Time-Series & Trend Analysis
* **Year-Over-Year Growth:** Compared current sales with the previous year's sales (`LAG()` function).
* **Sales Trends:** Aggregated total sales by year to visualize growth patterns.
* **Performance vs Average:** Compared specific product performance against the average sales of that product using Window Functions.

## 🛠️ Technical Skills Demonstrated
* **DDL & DML:** Creating Schemas, Tables, and Bulk Inserting data.
* **Window Functions:** `OVER()`, `PARTITION BY`, `LAG()`, `SUM() OVER()`.
* **CTEs (Common Table Expressions):** Used for complex logic like customer segmentation.
* **Aggregations:** `GROUP BY`, `COUNT(DISTINCT)`, `DATETRUNC`.
* **Data Cleaning:** Handling NULL values and formatting dates.

## 💻 How to Run
1.  **Clone the Repository:**
    ```bash
    git clone (https://github.com/Zalanemoj/Advance-Data-Analytics)
    ```
2.  **Setup Database:**
    * Open `scripts/Data-insert` in SSMS (SQL Server Management Studio).
    * **Note:** Update the file paths in the `BULK INSERT` commands to match the location of your CSV files on your local machine.
    * Run the script to create the `DataWarehouseAnalytics` database and load the data.
3.  **Run Analysis:**
    * Execute scripts in the `Scripts/` folder to generate insights.

## 📄 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
