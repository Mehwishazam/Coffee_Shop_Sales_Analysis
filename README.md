Portfolio Project: Coffee Shop Sales Analysis
Objective:
Analyze coffee shop sales to derive actionable insights for enhancing revenue and customer satisfaction, using a dataset from Kaggle.

Problem Statement:
Identify sales trends and customer behavior to inform strategic decisions based on total sales, orders, and product performance.

Dataset:
Includes transaction details such as transaction_id, transaction_date, transaction_time, transaction_qty, store_id, store_location, product_id, unit_price, and product categories.

Data Source:
Sourced from Kaggle.

Data Upload Process:
Preparation: Ensured coffee_db was ready and data cleaned.
Data Import: Used SQL Server Management Studio (SSMS) for importing the dataset in .csv format.
Data Cleaning:
Standardized data types and handled invalid entries:
Converted key fields (transaction_date, transaction_time, transaction_id, transaction_qty, unit_price, store_id, product_id) to appropriate types (DATE, TIME, INT, DECIMAL).
Replaced non-numeric or invalid values with defaults for consistency.
Data Modeling:
Dimension Tables:
dim_store: Stores location data.
dim_product: Contains product details and categories.
dim_date: Captures date-related information for analysis.
Fact Table:
fact_sales: Central table linking dimensions with sales metrics, including a computed column for total sales.
KPI Calculations:
Total Sales Analysis:

Calculated total monthly sales, month-on-month changes, and differences from previous months.
Business Impact: Helps in revenue tracking, identifying seasonal trends, and making strategic decisions.
Total Orders Analysis:

Assessed monthly order counts and changes.
Business Impact: Tracks customer demand, informs sales strategy, and aids in forecasting.
Total Quantity Sold Analysis:

Evaluated total quantities sold per month.
Business Impact: Supports inventory management and sales strategy optimization.
Additional Analyses:
Sales by Weekdays/Weekends: Highlights customer behavior variations.
Sales by Store Location: Identifies top-performing locations.
Daily Sales with Average Line: Provides detailed daily performance insights.
Sales by Product Category: Reveals top-performing categories.
Top 10 Products by Sales: Focuses on high-revenue items.
Sales by Days and Hours: Informs peak hours for better resource allocation.
Visualization:
Data Marts connected to Power BI for creating dynamic dashboards to visualize trends and performance.

Conclusion:
The project uncovered valuable insights into sales trends, customer behavior, store performance, and product preferences, guiding data-driven strategies to enhance business growth and operational efficiency.
