# Data-Analytics-Day-4-Task
This repository contains a data analysis project using SQL on an e-commerce dataset. It includes a series of SQL queries to demonstrate skills in data retrieval, filtering, aggregation, joins, subqueries, and views, along with performance optimization using indexes.


# Objective
To use SQL queries to analyze an e-commerce dataset, practice fundamental to advanced SQL commands, and extract meaningful insights. The project demonstrates proficiency in data manipulation, aggregation, and query optimization.

# Dataset
- The primary dataset used is a single table named online-ecommerce. To practice JOIN operations, a secondary table named Customers was created and populated with sample data.
- Dataset Link : https://www.kaggle.com/datasets/ayushparwal2026/online-ecommerce

# Tools Used
The entire analysis was performed using MySQL Workbench.
Queries and Features
This project covers a wide range of SQL features:
 * Data Retrieval: Basic SELECT, LIMIT, ORDER BY, and WHERE clauses to view and filter data.
 * Aggregation: SUM() and AVG() functions combined with GROUP BY to aggregate data and perform calculations.
 * Subqueries: Used to find customers whose total sales exceeded a specific amount, demonstrating nested query logic.
 * Joins: INNER, LEFT, and RIGHT joins were used to combine data from the online-ecommerce and Customers tables, showcasing how to work with multiple datasets.
 * Views: A view (customer_sales) was created to store a frequently used aggregation query, simplifying future analysis.
 * Data Integrity & Null Handling: The COALESCE() function was used to replace NULL values with a default string.
 * Optimization: Indexes were created on key columns (State_Code, Customer_Name) to improve query performance.
   
# How the Queries Help
The queries serve a dual purpose: they are a technical demonstration of SQL skills and a practical tool for business insights.
 * Business Insights: The queries help identify top-selling states, high-value customers, and brands with the highest average sales. This information is crucial for strategic decisions.
 * SQL Skill Demonstration: The variety of queries showcases a strong understanding of core SQL concepts, including filtering, aggregation, and the ability to handle complex tasks like subqueries and joins.

# Challenges & Learnings
The main challenge was structuring the analysis to cover all the required SQL concepts logically. Creating and populating a secondary table for join practice was a key step. The primary learning outcome was a deeper understanding of how different SQL features work together to solve real-world data analysis problems, and how to present these findings clearly.

# How to Use
 * Connect to your MySQL server using MySQL Workbench.
 * Create a schema named online-ecommerce.
 * Execute the CREATE TABLE and INSERT INTO queries to set up the dataset.
 * Run the analysis queries sequentially.
 * Observe the results in the output panel.

---
## Author : SAKITHA MUDADLA
