Initial Query

SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    u.user_id,
    u.first_name,
    u.last_name,
    p.property_id,
    p.name AS property_name,
    pay.payment_id,
    pay.amount,
    pay.payment_method
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
JOIN payments pay ON b.booking_id = pay.booking_id;



Refactored Query
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    u.first_name || ' ' || u.last_name AS user_full_name,
    p.name AS property_name,
    pay.amount,
    pay.payment_method
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id;


Optimizations Applied
Reduced Columns: Only selected essential fields for clarity and speed.

LEFT JOIN for Payments: Ensures bookings are included even if payment data is not yet available.

Concatenated User Name: Improves readability without needing extra fields.

Assumed Indexes: On user_id, property_id, booking_id for optimal join performance.



Results
Improved Execution Plan: After indexing and query restructuring, fewer sequential scans were observed.

Reduced Execution Time: The simplified joins and indexed columns provided faster performance in query execution.

Better Coverage: Bookings without associated payments are no longer excluded.

