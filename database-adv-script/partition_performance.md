Booking Table Partitioning Report
Objective
To optimize the performance of queries on the Booking table, especially for large datasets, by implementing table partitioning based on the start_date column.

Approach
We partitioned the Booking table using range partitioning on the start_date column. This allows the database to scan only relevant partitions when filtering by date, reducing I/O and improving query speed.

Partitioned Table Design
The Booking_partitioned table was created with PARTITION BY RANGE (start_date) and split into monthly partitions for the year 2025:

sql
Copy
Edit
CREATE TABLE Booking_partitioned (
    booking_id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL NOT NULL,
    status VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) PARTITION BY RANGE (start_date);
Example partition:

sql
Copy
Edit
CREATE TABLE Booking_2025_01 PARTITION OF Booking_partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2025-02-01');
Query Performance Test
We used EXPLAIN ANALYZE to compare performance before and after partitioning.

Test Query
sql
Copy
Edit
EXPLAIN ANALYZE
SELECT * FROM Booking_partitioned
WHERE start_date BETWEEN '2025-01-10' AND '2025-01-20';
Observations
Before Partitioning: Full table scan on Booking resulted in high query cost and latency.

After Partitioning: Query planner only scanned the relevant partition (e.g., Booking_2025_01), leading to faster execution.

Reduced I/O and CPU usage observed in EXPLAIN output.

