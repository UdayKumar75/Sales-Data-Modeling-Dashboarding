# Sales Data Modeling and Dashboarding using SQL & Power BI

This project focuses on cleaning, transforming, and modeling sales-related data from the AdventureWorksDW2022 database using SQL. The processed data is then used to create an interactive Power BI dashboard for business analysis and decision-making.

## 📊 Dashboard Preview

Here’s a quick look at the Power BI dashboard used in this project:

![Sales Dashboard](Dashboard/sales_dashboard.png)

## 🔧 Tools & Technologies
- **SQL Server** (T-SQL)
- **Power BI**
- **AdventureWorksDW2022** (Sample Data Warehouse)

## 📁 Project Components

- **Customer_SQL_Query.sql**  
  Cleansed customer data by handling nulls, decoding gender, calculating age, and joining with geography details.

- **Product_SQL_Query.sql**  
  Extracted and joined product, subcategory, and category data; added product status and cleaned attributes such as color, size, and line.

- **Date_SQL_Query.sql**  
  Filtered calendar dates from the past 5 years, extracted day, month, quarter, and year information for time-based analysis.

- **Sales_SQL_Query.sql**  
  Filtered and transformed sales transactions including customer ID, product ID, order quantity, cost, and revenue-related columns.

## 🔍 Key SQL Techniques Used
- `JOIN` operations to combine fact and dimension tables.
- `CASE` statements for conditional logic (e.g., gender classification).
- `DATEDIFF` for age calculation and time-series handling.
- Filtering and ordering data for performance optimization.

## 📊 Power BI Dashboard Highlights
- Visualized key KPIs including total sales, product category performance, and customer distribution.
- Enabled time-based slicing (Year, Quarter, Month) using cleaned date dimensions.
- Provided insights into customer demographics and product trends using slicers and drilldowns.

## 📈 Business Impact
This project helps in understanding customer behavior, product performance, and sales trends—critical for strategic decision-making. It serves as a foundation for building more advanced analytics or machine learning applications.

## 📌 Project Status
✅ Completed  
🔄 Scope for enhancement: Add predictive modeling, integrate real-time data sources, and improve UX of Power BI dashboard.

---

