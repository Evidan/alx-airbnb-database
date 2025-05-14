-- Total number of bookings per user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id
ORDER BY total_bookings DESC;


-- Rank properties based on total bookings using ROW_NUMBER
SELECT property_id, COUNT(*) AS total_bookings,
       ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM bookings
GROUP BY property_id;
