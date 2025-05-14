# SQL Join Queries – Airbnb Clone

## 📌 Overview

This directory contains SQL queries designed to demonstrate the use of different types of SQL joins in the context of the **Airbnb Clone** backend project. The queries retrieve meaningful data involving users, properties, bookings, and reviews while showcasing common join operations.

## 🧠 Objectives

- Practice SQL JOIN operations including INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.
- Understand how to combine and order data from multiple tables.
- Retrieve comprehensive datasets to support backend features such as booking history, review management, and user profiles.

## 📂 File: `joins_queries.sql`

### ✅ Contents

1. **INNER JOIN – Bookings and Users**
   - Retrieves all bookings and the respective users who made them.
   - Sorted by booking start date (most recent first).

2. **LEFT JOIN – Properties and Reviews**
   - Lists all properties and their reviews.
   - Includes properties even if they have no reviews.
   - Sorted by property ID and review rating in descending order.

3. **FULL OUTER JOIN – Users and Bookings**
   - Retrieves all users and all bookings, even if some bookings aren't linked to users or vice versa.
   - Sorted by user ID and booking start date.

## ⚙️ Usage

You can run the queries using any PostgreSQL-compatible database interface or SQL execution tool after setting up the Airbnb database schema.

```sql
-- Example usage
\i joins_queries.sql





# SQL Subqueries – Airbnb Clone

## 📌 Overview

This directory contains SQL queries that demonstrate the use of **correlated** and **non-correlated subqueries** within the Airbnb Clone backend database. These queries are designed to extract advanced insights from the data using nested SELECT statements.

## 🧠 Objectives

- Use non-correlated subqueries to filter data based on aggregated conditions.
- Apply correlated subqueries to evaluate row-specific conditions.
- Practice writing efficient and readable SQL for complex backend logic.

## 📂 File: `subqueries.sql`

### ✅ Contents

1. **Non-Correlated Subquery – High-Rated Properties**
   - Retrieves all properties with an average review rating greater than 4.0.
   - Uses a `HAVING AVG(rating) > 4.0` clause in a nested query.
   - Sorted by property ID.

2. **Correlated Subquery – Frequent Bookers**
   - Retrieves users who have made more than 3 bookings.
   - Correlates each user with a subquery that counts their bookings.
   - Sorted by user ID.

## ⚙️ Usage

These queries can be run in any PostgreSQL-compatible SQL environment after the Airbnb schema has been created.



# SQL Aggregation and Window Functions

## Objective
This task demonstrates the use of SQL aggregation functions and window functions to perform advanced data analysis on the Airbnb Clone database.

---

## 🧮 Queries Included

### 1. Total Bookings per User

This query calculates the total number of bookings each user has made. It uses the `COUNT()` function with `GROUP BY` and orders the result in descending order of total bookings.

```sql
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id
ORDER BY total_bookings DESC;
