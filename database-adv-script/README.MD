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
