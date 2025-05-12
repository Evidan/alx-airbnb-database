# Airbnb Clone – Sample Data

This file contains SQL `INSERT` statements used to populate the database with realistic sample data for development, testing, or demonstration purposes.

## 📂 File Structure

- `sample_data.sql`: Contains SQL statements to insert mock data into all main tables:
  - `users`
  - `properties`
  - `bookings`
  - `payments`
  - `reviews`
  - `messages`

## 🎯 Objectives

- Provide realistic data for frontend/backend integration.
- Support database testing and performance validation.
- Allow demo setups of the Airbnb Clone application.

## 🧪 Sample Entities

### 👤 Users
Includes hosts and guests with unique emails and roles.

### 🏠 Properties
Each property is linked to a host and includes pricing, location, and descriptions.

### 📆 Bookings
Bookings link guests to properties for specific time periods, including statuses like `pending` or `confirmed`.

### 💳 Payments
Payments are tied to bookings with various payment methods like `credit_card` or `paypal`.

### ⭐ Reviews
Users leave reviews with a rating (1–5) and a comment after staying at a property.

### 💬 Messages
Sample messages between users simulate pre-booking communication.

## 🚀 Usage

1. Ensure all tables from `schema.sql` have been created.
2. Run the sample data script:

   ```bash
   psql -U your_username -d your_database -f sample_data.sql
