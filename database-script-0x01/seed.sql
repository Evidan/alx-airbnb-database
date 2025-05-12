-- USERS
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('a1f3e1a1-1111-1111-1111-111111111111', 'Alice', 'Smith', 'alice@example.com', 'hashed_pw_1', '123-456-7890', 'host'),
('b2f3e1a1-2222-2222-2222-222222222222', 'Bob', 'Jones', 'bob@example.com', 'hashed_pw_2', '234-567-8901', 'guest'),
('c3f3e1a1-3333-3333-3333-333333333333', 'Charlie', 'Brown', 'charlie@example.com', 'hashed_pw_3', '345-678-9012', 'guest');

-- PROPERTIES
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES
('p1a1b1c1-4444-4444-4444-444444444444', 'a1f3e1a1-1111-1111-1111-111111111111', 'Cozy Cabin', 'A small cabin in the woods.', 'Denver, CO', 120.00),
('p2a1b1c1-5555-5555-5555-555555555555', 'a1f3e1a1-1111-1111-1111-111111111111', 'City Loft', 'Modern loft in downtown.', 'New York, NY', 200.00);

-- BOOKINGS
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('bk101-aaaa-bbbb-cccc-111111111111', 'p1a1b1c1-4444-4444-4444-444444444444', 'b2f3e1a1-2222-2222-2222-222222222222', '2025-06-01', '2025-06-05', 480.00, 'confirmed'),
('bk102-aaaa-bbbb-cccc-222222222222', 'p2a1b1c1-5555-5555-5555-555555555555', 'c3f3e1a1-3333-3333-3333-333333333333', '2025-07-10', '2025-07-12', 400.00, 'pending');

-- PAYMENTS
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
('pay101-aaaa-bbbb-cccc-111111111111', 'bk101-aaaa-bbbb-cccc-111111111111', 480.00, 'credit_card'),
('pay102-aaaa-bbbb-cccc-222222222222', 'bk102-aaaa-bbbb-cccc-222222222222', 400.00, 'paypal');

-- REVIEWS
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
('rev101-aaaa-bbbb-cccc-111111111111', 'p1a1b1c1-4444-4444-4444-444444444444', 'b2f3e1a1-2222-2222-2222-222222222222', 5, 'Amazing stay, very clean and peaceful!'),
('rev102-aaaa-bbbb-cccc-222222222222', 'p2a1b1c1-5555-5555-5555-555555555555', 'c3f3e1a1-3333-3333-3333-333333333333', 4, 'Great location but a bit noisy.');

-- MESSAGES
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
('msg101-aaaa-bbbb-cccc-111111111111', 'b2f3e1a1-2222-2222-2222-222222222222', 'a1f3e1a1-1111-1111-1111-111111111111', 'Hi, is the cabin available for late June?'),
('msg102-aaaa-bbbb-cccc-222222222222', 'a1f3e1a1-1111-1111-1111-111111111111', 'b2f3e1a1-2222-2222-2222-222222222222', 'Yes, it is available. Feel free to book!');
