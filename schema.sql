-- ===================================================================
-- PG / HOSTEL FINDER & BOOKING SYSTEM - DATABASE SCHEMA (MySQL / H2)
-- Compatible with MySQL 8.0+ and Oracle
-- ===================================================================

DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS bookings;
DROP TABLE IF EXISTS rooms;
DROP TABLE IF EXISTS property_amenities;
DROP TABLE IF EXISTS properties;
DROP TABLE IF EXISTS users;

-- 1. USERS TABLE
CREATE TABLE users (
    user_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(20),
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) NOT NULL DEFAULT 'USER',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. PROPERTIES TABLE
CREATE TABLE properties (
    property_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    owner_id BIGINT NOT NULL,
    property_name VARCHAR(150) NOT NULL,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state VARCHAR(100),
    pincode VARCHAR(10),
    rent DOUBLE NOT NULL,
    deposit DOUBLE,
    gender_type VARCHAR(20) DEFAULT 'CO_ED',
    description TEXT,
    rules TEXT,
    contact_phone VARCHAR(20),
    contact_email VARCHAR(100),
    image_url VARCHAR(500),
    verified BOOLEAN DEFAULT TRUE,
    status VARCHAR(20) DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_property_owner FOREIGN KEY (owner_id) REFERENCES users(user_id) ON DELETE CASCADE
);

-- 3. PROPERTY AMENITIES (JOIN TABLE)
CREATE TABLE property_amenities (
    property_id BIGINT NOT NULL,
    amenity VARCHAR(100) NOT NULL,
    CONSTRAINT fk_amenity_property FOREIGN KEY (property_id) REFERENCES properties(property_id) ON DELETE CASCADE
);

-- 4. ROOMS TABLE
CREATE TABLE rooms (
    room_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    property_id BIGINT NOT NULL,
    room_type VARCHAR(30) NOT NULL,
    room_number VARCHAR(20),
    rent DOUBLE NOT NULL,
    capacity INT NOT NULL,
    available_rooms INT NOT NULL DEFAULT 1,
    ac_available BOOLEAN DEFAULT FALSE,
    CONSTRAINT fk_room_property FOREIGN KEY (property_id) REFERENCES properties(property_id) ON DELETE CASCADE
);

-- 5. BOOKINGS TABLE
CREATE TABLE bookings (
    booking_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT NOT NULL,
    property_id BIGINT NOT NULL,
    room_id BIGINT NOT NULL,
    booking_date DATE NOT NULL,
    check_in_date DATE NOT NULL,
    check_out_date DATE,
    duration_months INT DEFAULT 1,
    status VARCHAR(20) NOT NULL DEFAULT 'PENDING',
    remarks TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_booking_user FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    CONSTRAINT fk_booking_property FOREIGN KEY (property_id) REFERENCES properties(property_id) ON DELETE CASCADE,
    CONSTRAINT fk_booking_room FOREIGN KEY (room_id) REFERENCES rooms(room_id) ON DELETE CASCADE
);

-- 6. REVIEWS TABLE
CREATE TABLE reviews (
    review_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT NOT NULL,
    property_id BIGINT NOT NULL,
    rating INT NOT NULL CHECK (rating >= 1 AND rating <= 5),
    comment TEXT,
    review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_review_user FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    CONSTRAINT fk_review_property FOREIGN KEY (property_id) REFERENCES properties(property_id) ON DELETE CASCADE
);

-- INDEXES FOR FAST SEARCH
CREATE INDEX idx_properties_city ON properties(city);
CREATE INDEX idx_properties_rent ON properties(rent);
CREATE INDEX idx_bookings_user ON bookings(user_id);
CREATE INDEX idx_bookings_status ON bookings(status);
