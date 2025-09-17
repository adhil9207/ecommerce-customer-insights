# ecommerce-customer-insights

This project analyzes customer purchase behavior and loyalty patterns for an e-commerce business using Python, SQL, and Power BI.

🔧 Tools Used

Python (Pandas) → Data cleaning 


PostgreSQL → SQL queries and aggregations

Power BI → Interactive dashboard

📂 Project Workflow

Data Cleaning (Python)

Removed nulls

Created new columns: Spend_per_Item, Purchase_Frequency, High_Value, Loyalty_Segment, Age_Group

SQL Queries (PostgreSQL)

Loaded data into PostgreSQL

Example:

SELECT * FROM public."ecommerce CB.csv" LIMIT 10;


Business queries (membership spend, satisfaction, top customers, etc.) → see queries.sql

Visualization (Power BI)

Imported SQL results

Built dashboard with KPIs, charts, and customer insights
