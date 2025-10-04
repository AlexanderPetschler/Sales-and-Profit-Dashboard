# Sales and Profit Dashboard – MySQL Project

## Project Overview

This project demonstrates the end-to-end process of designing a relational database, importing and cleaning data, writing analytical SQL queries, and generating meaningful business insights from raw data.  

The dataset simulates over **1,000 sales transactions** for a fictional electronics retailer, **TechMart**, covering a one-year period. It includes data on product sales, revenue, profit, discounts, sales channels, and regions.

The primary goal of this project is to show how MySQL can be used to transform raw data into actionable insights that support strategic decision-making.

---

## Business Objectives

TechMart, a global electronics retailer, wants to better understand its sales performance to support data-driven decision-making. The company’s key objectives include:

- Understanding **monthly revenue and profit trends** throughout the year.
- Identifying **top-performing products and categories**.
- Analysing **regional and channel performance** to guide expansion strategies.
- Evaluating the **impact of discounts** on profit margins.
- Gaining deeper insights into customer behaviour and purchase patterns.

The insights derived from this analysis can help TechMart optimise pricing strategies, improve inventory management, and enhance marketing decisions.

---

## Tools and Technologies Used

- **MySQL Workbench** – for database creation, querying, and analysis  
- **Excel / CSV** – for raw data preparation and cleaning  
- **Excel Charts** – for creating visual dashboards
- **Tableau** - for clearer chart visualisation  
- **GitHub** – for version control and project hosting

---

## Analysis Process

1. **Data Preparation:**  
   - Created a synthetic dataset in Excel with over 1,000 sales transactions.
   - Exported data as CSV files for easy import into MySQL.

2. **Database Design:**  
   - Created four relational tables (`products`, `stores`, `customers`, `sales`).
   - Established foreign keys to maintain data integrity and enable joins.

3. **Data Import:**  
   - Loaded the CSV files into MySQL tables using the Table Data Import Wizard.

4. **Exploratory Analysis:**  
   - Ran SQL queries to explore revenue trends, product performance, profit margins, and discount impact.

5. **Insights and Visualisation:**  
   - Used query results to build clear, business-focused visualisations.

---

## Visualisations Created

- **Monthly Revenue and Profit Trends:** Line chart showing performance throughout the year.
- **Top Products by Revenue:** Bar chart highlighting the best-selling products.
- **Sales by Category and Region:** Comparative charts to understand where sales are strongest.
- **Channel Performance Analysis:** Bar chart showing revenue and profit per sales channel.
- **Discount Impact Analysis:** Visual breakdown of how discount levels affect profit margins.

---

## Tableau Analysis Workbooks

This repository contains Tableau workbooks for sales analysis:

- `Sales and Profit Dashboard Tableau graphs.twbx`:
- Annual monthly profit and revenue trends.   
- Annual profit, revenue, and profit margins by channel, by category and by region.
- Annual impact of discount bands on profit margins

---

## Key Insights 

- **Monthly Trends:** Revenue and profit dipped in the first quarter, but grew steadily throughout the year, with significant peaks in **December**, indicating strong seasonal demand.  
- **Top Products:** Smartphones and laptops were the highest revenue drivers, contributing to more than **83%** of total revenue.  
- **Category Performance:** Laptops had the **highest profit**, suggesting premium pricing opportunities.  
- **Regional Insights:** **Europe** generated the most revenue overall, while **Asia** showed the least potential.  
- **Channel Insights:** The **online channel** was the most profitable, but **wholesale** provided stable revenue through high-volume orders.  
- **Discount Strategy:** Discounts above **20%** significantly reduced profit margins, indicating that a more controlled discounting strategy could improve profitability.

---

## Author

**Name:** Alexander Petschler  
**Date:** October 2025    
**LinkedIn:** www.linkedin.com/in/alex-petschler

---

