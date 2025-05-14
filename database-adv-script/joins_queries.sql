
-- 1. INNER JOIN: Bookings and Users
SELECT 
    bookings.booking_id,
    bookings.start_date,
    bookings.end_date,
    bookings.total_price,
    users.user_id,
    users.first_name,
    users.last_name,
    users.email
FROM bookings
INNER JOIN users ON bookings.user_id = users.user_id;

-- 2. LEFT JOIN: Properties and Reviews
SELECT 
    properties.property_id,
    properties.name AS property_name,
    reviews.review_id,
    reviews.rating,
    reviews.comment
FROM properties
LEFT JOIN reviews ON properties.property_id = reviews.property_id;

-- 3. FULL OUTER JOIN: Users and Bookings
SELECT 
    users.user_id,
    users.first_name,
    users.email,
    bookings.booking_id,
    bookings.start_date,
    bookings.total_price
FROM users
FULL OUTER JOIN bookings ON users.user_id = bookings.user_id;
