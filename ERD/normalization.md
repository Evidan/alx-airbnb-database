user_id (PK), first_name, last_name, email, password_hash, phone_number, role, created_at

property_id (PK), host_id (FK), name, description, location, pricepernight, created_at, updated_at

booking_id (PK), property_id (FK), user_id (FK), start_date, end_date, total_price, status, created_at

payment_id (PK), booking_id (FK), amount, payment_date, payment_method

review_id (PK), property_id (FK), user_id (FK), rating, comment, created_at

message_id (PK), sender_id (FK), recipient_id (FK), message_body, sent_at


# Database Normalization Report - Airbnb Clone

## Objective
Ensure the Airbnb Clone database schema complies with the Third Normal Form (3NF) to reduce redundancy and improve data integrity.

---

## Normalization Steps

### Step 1: First Normal Form (1NF)
- Ensured all attributes are atomic (no repeating groups or multi-valued attributes).
- Example: `phone_number` in the User table is atomic.

### Step 2: Second Normal Form (2NF)
- All non-key attributes fully depend on the entire primary key.
- No partial dependencies since each table has a single-column primary key.

### Step 3: Third Normal Form (3NF)
- Verified no transitive dependencies.
- Each non-key attribute depends only on the primary key, not on other non-key attributes.

---

## Conclusion
All tables (User, Property, Booking, Payment, Review, Message) satisfy the conditions for 3NF. No changes were necessary beyond the original design, which demonstrates good normalization principles.

