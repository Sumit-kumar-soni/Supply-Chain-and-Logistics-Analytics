# Supply Chain & Logistics Analytics Dashboard 🚚📊

## Project Overview
This project is an end-to-end data analytics solution designed to evaluate supply chain efficiency, track delivery bottlenecks, and measure the profitability of individual product lines. The goal was to build a comprehensive tool for a Chief Supply Chain Officer to make rapid, data-driven decisions regarding freight, routing, and pricing.

## Tech Stack Used
* **Database Management:** SQL Server (Data extraction, table architecture, missing value imputation, and text cleaning)
* **Data Visualization:** Power BI
* **Calculations & Logic:** SQL Aggregations, Window Functions, and DAX (Data Analysis Expressions)

## Key Business Metrics Tracked
1. **Late Delivery Rate:** Calculated the percentage of orders flagged as a delivery risk across different shipping modes (Standard, Same Day, First Class).
2. **Geographic Shipping Delays:** Quantified the exact day-count difference between Scheduled Shipping and Real Shipping dates across global markets.
3. **Discount Profitability:** Flagged highly discounted orders that resulted in negative net profit to identify potential pricing strategy errors.
4. **Average Order Value (AOV):** Utilized distinct counts of Order IDs to calculate the true revenue generated per customer checkout.

## The Data Model & Preparation
* Engineered a relational data model processing both transactional order data and web-traffic logs.
* Utilized SQL Staging Tables to safely import unstructured CSV files.
* Sanitized geographic data (Zipcodes) by forcing `VARCHAR` types to prevent numeric truncation.
* Handled missing customer and geographic text fields using structured `COALESCE` statements to preserve dashboard filtering integrity.

## Files Included
* `SupplyChain_SQL_Architecture.sql`: The complete database creation, table schema, and ETL cleaning scripts.
* `Logistics_Business_Queries.sql`: 10 highly analytical queries answering core supply chain questions.
* `Dataco_SupplyChainAnalytics.pbix`: The final Power BI project file containing the DAX measures and interactive visuals.
* `Dashboard_Screenshots/`: High-resolution images of the final dashboard (Executive Overview, Regional Routing, and Product Profitability).
* <img width="1920" height="1031" alt="SupplyChainDashboard " src="https://github.com/user-attachments/assets/9e603e05-49bf-4913-afae-0139d2275e71" />

---

## ☕ Stay Connected

Let's stay in touch! Feel free to connect with me on the following platforms:

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/sumit-kumar-soni-7b504224b/)

---

## 🛡️ License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and share this project with proper attribution.

## 🌟 About Me

Hi there! I'm **Sumit Kumar Soni**. I’m passionate Data Analyst on a mission to share insight by using data and make working with data enjoyable and engaging!

Let's stay in touch! Feel free to connect with me on the following platforms:

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/sumit-kumar-soni-7b504224b/)
