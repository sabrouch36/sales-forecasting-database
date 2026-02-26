\# Sales Forecasting Database (PostgreSQL)



Sales Forecasting Database

Overview



This project demonstrates the process of locating, installing, and verifying a PostgreSQL database for sales analysis and forecasting.

The database was restored using pgAdmin and queried to validate structure, relationships, and analytical capabilities.



Data Source



Source: PostgreSQL backup file



File: sales\_forecasting.backup



Tool: pgAdmin 4



Database Structure



The database contains transactional sales data organized into the following tables:



Table Name	Description

customers	Customer information and segments

orders	Order-level details (dates, region, shipping, customer)

order\_items	Line-item sales data linked to orders

products	Product catalog and product names

Data Format



Schema: public



Primary Data Types: text, date, numeric



Relationships:



customers.customer\_id → orders.customer\_id



orders.order\_id → order\_items.order\_id



order\_items.product\_id → products.product\_id



Data Dictionary



A full data dictionary was generated using information\_schema.columns, showing:



Table name



Column name



Data type



Nullability



(Screenshot included in submission)



Verification Queries

Select Sample Data

SELECT \* FROM customers LIMIT 10;

SELECT \* FROM products LIMIT 10;

SELECT \* FROM orders LIMIT 10;

Interesting Queries

1\. Join Query (Multiple Tables)

SELECT

&nbsp;   o.order\_id,

&nbsp;   o.order\_date,

&nbsp;   c.customer\_name,

&nbsp;   p.product\_name,

&nbsp;   oi.sales

FROM orders o

JOIN customers c 

&nbsp;   ON o.customer\_id = c.customer\_id

JOIN order\_items oi 

&nbsp;   ON o.order\_id = oi.order\_id

JOIN products p 

&nbsp;   ON oi.product\_id = p.product\_id

ORDER BY o.order\_date

LIMIT 20;



This query demonstrates how sales transactions are linked across customers, orders, products, and line items.



2\. Group By \& Aggregate Query

SELECT

&nbsp;   o.region,

&nbsp;   SUM(oi.sales) AS total\_sales

FROM orders o

JOIN order\_items oi 

&nbsp;   ON o.order\_id = oi.order\_id

GROUP BY o.region

ORDER BY total\_sales DESC;



This query summarizes total sales by region and supports high-level business analysis.



Obstacles Encountered



Initial restore produced a warning message, but data was successfully restored.



Identifying correct join paths between transactional tables.



Ensuring correct use of foreign keys across orders and order items.



Conclusion



The database was successfully restored, verified, and queried.

It supports relational joins, aggregation, and time-based analysis, making it suitable for sales forecasting and analytical reporting.



Screenshots



Database restore confirmation



Data dictionary



Sample table data



Join query results



Group-by aggregation results



\## Technology Used

\- PostgreSQL

\- pgAdmin

\- Git \& GitHub



\## Author

Sabri Hamdaoui

MBA – Data Analytics

