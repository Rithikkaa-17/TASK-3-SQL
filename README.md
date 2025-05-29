# TASK-3-SQL

Objective
The objective of this task is to demonstrate proficiency in SQL by performing data extraction, analysis and optimization using a structured database. This task covers the use of SQL queries for basic retrieval, filtering, grouping, joining tables, creating views and applying indexes.

Tools Used
Database Engine: MySQL 

Database Schema
Database: SALES

Tables Created:
Cus – Customer Information

Coun – Country Master

Pro – Province/State Master

Town – City Master

Cat – Product Categories

Cour – Courier Information

Data Insertion
Each table was inserted with 3 sample rows of representative data.

SQL Query Highlights
Data Retrieval
SELECT * FROM Cus; – Fetches all customer details

WHERE DOB > '1990-01-01' – Filters customers by date of birth

Data Ordering & Grouping
ORDER BY FirstName – Sorts data alphabetically

GROUP BY EXTRACT(YEAR FROM DOB) – Groups customers by birth year

Joins
INNER JOIN between Town and Pro

LEFT JOIN to preserve unmatched data

Aggregate Functions
AVG, COUNT, MIN, MAX – Used to analyze customer demographics and courier data

Subqueries
Used to find customers older than the average age

View
CustomerSummary – Concatenated name, email, and contact info

Indexes
Created on Email and DOB for performance optimization

Output Verification
All queries executed successfully

Output verified and captured in OUTPUT.txt

Elapsed times confirm efficient execution

Key Learnings
Mastered SELECT, WHERE, ORDER BY, GROUP BY

Practiced JOINS and Subqueries

Applied aggregate functions for summary statistics

Created views and indexes for better analysis and performance

Deliverables
SQL Script File - TASK-3 SQL RITHIKKAA

Output Screenshots/Logs – OUTPUT.txt

SQL queries and Output - TASKSQL

README File – This document

