📊 Sales Forecasting Database Project
1️⃣ Project Overview

This project demonstrates the process of restoring, verifying, and analyzing a transactional PostgreSQL database for sales analysis and future forecasting.

The objective was to:

Restore a database from backup

Validate relational structure

Perform analytical SQL queries

Prepare the data for forecasting use cases

2️⃣ Tools & Technologies

PostgreSQL

pgAdmin 4

SQL

Git & GitHub

Windows 11

3️⃣ Data Source

Source type: PostgreSQL backup file

File location: data/raw/sales_forecasting.backup

Schema: public

4️⃣ Database Structure

The database contains transactional sales data organized into four main tables:

Table Name	Description
customers	Customer information and segments
orders	Order-level transaction data
order_items	Line-level sales data
products	Product catalog
5️⃣ Relational Model

Relationships:

customers.customer_id → orders.customer_id

orders.order_id → order_items.order_id

order_items.product_id → products.product_id

This represents a standard transactional relational model.

6️⃣ Data Verification

The following steps were completed:

✔ Data dictionary generated using information_schema.columns
✔ Table structure verified
✔ Sample data retrieved from all tables
✔ Referential joins validated

SQL scripts are available inside the sql/ directory.

7️⃣ Analytical Queries
🔹 Join Example

The following query connects customers, orders, products, and sales:

(See sql/03_joins.sql)

🔹 Aggregation Example

Total sales by region:

(See sql/04_aggregations.sql)

8️⃣ Key Insights

Sales data is fully relational and consistent

Regions can be aggregated for performance analysis

Structure supports time-based forecasting

9️⃣ Project Organization
data/
  raw/
  processed/
sql/
docs/
README.md
🔟 Future Improvements

Build monthly time-series aggregation table

Implement forecasting model (ARIMA / regression)

Create dashboard visualization (Power BI / Python)

Author

Sabri Hamdaoui
Master’s in Data Analytics