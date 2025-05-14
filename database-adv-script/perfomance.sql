-- Initial query to retrieve all bookings with user, property, and payment details
EXPLAIN
SELECT 
    b.booking_id,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    pay.amount,
    b.start_date,
    b.end_date
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id
WHERE b.status = 'confirmed'
AND b.start_date >= CURRENT_DATE;

-- Optimized version using reduced columns and ensuring indexes exist on filter/join columns
EXPLAIN
SELECT 
    b.booking_id,
    u.first_name,
    p.name AS property_name,
    pay.amount
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id
WHERE b.status = 'confirmed'
AND b.start_date >= CURRENT_DATE;
