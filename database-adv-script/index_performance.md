
-- Create indexes on high-usage columns

-- User table
CREATE INDEX idx_users_email ON users(email);

-- Booking table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Property table
CREATE INDEX idx_properties_location ON properties(location);
CREATE INDEX idx_properties_pricepernight ON properties(pricepernight);

-- Example query performance analysis using EXPLAIN (before/after index creation)

-- Query: Retrieve bookings for a specific user
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 'some-uuid';

-- Query: Join bookings and properties
EXPLAIN ANALYZE
SELECT b.*, p.name
FROM bookings b
JOIN properties p ON b.property_id = p.property_id
WHERE p.location = 'New York';
