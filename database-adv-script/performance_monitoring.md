Database Performance Monitoring & Optimization Report
Objective
Continuously monitor and refine the performance of frequently executed SQL queries in the Airbnb Clone backend system using tools such as EXPLAIN ANALYZE and SHOW PROFILE.

Monitoring Tools Used
EXPLAIN ANALYZE (PostgreSQL): Used to view query execution plans, cost, and runtime.

SHOW PROFILE (MySQL): Used to analyze resource usage per query phase (e.g., parsing, execution, I/O).

Queries Analyzed
1. Booking Query with Joins
sql
Copy
Edit
EXPLAIN ANALYZE
SELECT b.booking_id, u.first_name, p.name, pay.amount
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
JOIN Payment pay ON pay.booking_id = b.booking_id
WHERE b.status = 'confirmed'
AND b.start_date BETWEEN '2025-01-01' AND '2025-02-01';
Findings:

Full table scans on Booking and Payment

Join filters increased execution time



2. Property Review Query
sql
Copy
Edit
EXPLAIN ANALYZE
SELECT p.name, AVG(r.rating) AS average_rating
FROM Property p
LEFT JOIN Review r ON r.property_id = p.property_id
GROUP BY p.property_id;
Findings:

Hash aggregate and full scan on Review table

Lack of index on Review.property_id and rating

Bottlenecks Identified
Query	Bottleneck	Recommendation
Booking Joins	Full scan on Booking and Payment	Add indexes on status, start_date, and booking_id
Review Aggregation	Full scan on Review	Add index on property_id and rating

Schema Adjustments Implemented
sql
Copy
Edit
CREATE INDEX idx_booking_status_date ON Booking(status, start_date);
CREATE INDEX idx_payment_booking_id ON Payment(booking_id);
CREATE INDEX idx_review_property_id_rating ON Review(property_id, rating);


Results

