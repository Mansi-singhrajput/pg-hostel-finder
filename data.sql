-- ===================================================================
-- PG / HOSTEL FINDER & BOOKING SYSTEM - SAMPLE SEED DATA
-- ===================================================================

-- 1. INSERT USERS (Admin, Owners, Students)
INSERT INTO users (user_id, name, email, phone, password, role) VALUES
(1, 'System Administrator', 'admin@pghfinder.com', '9876543210', 'admin123', 'ADMIN'),
(2, 'Rajesh Sharma', 'rajesh.owner@example.com', '9811223344', 'owner123', 'OWNER'),
(3, 'Priya Kulkarni', 'priya.owner@example.com', '9822334455', 'owner123', 'OWNER'),
(4, 'Rahul Verma', 'rahul.student@example.com', '9933445566', 'user123', 'USER'),
(5, 'Sneha Patel', 'sneha.student@example.com', '9944556677', 'user123', 'USER'),
(6, 'Mansi Kumari', 'monalsinghrajput1310@gmail.com', '9876543210', 'owner123', 'OWNER'),
(7, 'Mansi Singh', 'salonikumari1562001@gmail.com', '9876543211', 'user123', 'USER');

-- 2. INSERT PROPERTIES
INSERT INTO properties (property_id, owner_id, property_name, address, city, state, pincode, rent, deposit, gender_type, description, rules, contact_phone, contact_email, image_url, verified, status) VALUES
(1, 2, 'Green Valley Luxury PG for Men', '45, Neeladri Road, Electronic City Phase 1', 'Bengaluru', 'Karnataka', '560100', 7500.0, 12000.0, 'BOYS', 'Premium paying guest accommodation located in the heart of Electronic City. Ideal for tech professionals and students. 3 times hygienic food and 24/7 power backup.', 'Gate closes at 11:00 PM. No smoking inside.', '9811223344', 'greenvalley@example.com', 'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?auto=format&fit=crop&w=800&q=80', TRUE, 'Active'),
(2, 3, 'Sai Serene Living Ladies Hostel', '12, Clover Park, Viman Nagar near Symbiosis', 'Pune', 'Maharashtra', '411014', 8000.0, 15000.0, 'GIRLS', 'Safe, modern, and vibrant hostel exclusively for female students and working professionals. Walking distance to Symbiosis colleges and Phoenix Marketcity.', 'Biometric entry by 10:30 PM. Overnight male visitors prohibited.', '9822334455', 'saiserene@example.com', 'https://images.unsplash.com/photo-1595526114035-0d45ed16cfbf?auto=format&fit=crop&w=800&q=80', TRUE, 'Active'),
(3, 2, 'Urban Nest Co-Living Spaces', 'Plot 24, Sector 48, Sohna Road', 'Delhi NCR', 'Haryana', '122018', 9500.0, 18000.0, 'CO_ED', 'Contemporary co-living space with recreation room, gym, dedicated workstations, and vibrant community events.', '24/7 entry permitted with smart card.', '9811223344', 'urbannest@example.com', 'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?auto=format&fit=crop&w=800&q=80', TRUE, 'Active'),
(4, 3, 'Cyber Towers Elite PG & Hostel', 'Lane 3, Madhapur, near Hitec City Metro', 'Hyderabad', 'Telangana', '500081', 6500.0, 10000.0, 'CO_ED', 'Affordable and convenient PG situated right next to the Madhapur metro station. Surrounded by major tech parks.', 'Visitors allowed until 9:00 PM.', '9822334455', 'cybertowers@example.com', 'https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af?auto=format&fit=crop&w=800&q=80', TRUE, 'Active'),
(5, 3, 'Magadh Royal Girls Hostel & PG', 'Opp. A.N. College, Boring Road', 'Patna', 'Bihar', '800013', 6500.0, 8000.0, 'GIRLS', 'Clean, peaceful, and highly secure hostel for girl students preparing for competitive exams or studying in Patna.', 'Entry closes at 9:30 PM. Silence hours after 10 PM.', '9835012345', 'magadhhostel@example.com', 'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?auto=format&fit=crop&w=800&q=80', TRUE, 'Active'),
(6, 2, 'Tirhut Executive Boys PG', 'Near MIT Campus, Mithanpura', 'Muzaffarpur', 'Bihar', '842002', 5500.0, 6000.0, 'BOYS', 'Spacious and affordable PG for engineering students and working professionals in Muzaffarpur.', 'Gate closes at 10:00 PM.', '9835123456', 'tirhutpg@example.com', 'https://images.unsplash.com/photo-1564013799919-ab600027ffc6?auto=format&fit=crop&w=800&q=80', TRUE, 'Active'),
(7, 3, 'Vaishali Green View PG & Hostel', 'Cinema Road, Near Hajipur Railway Station', 'Hajipur', 'Bihar', '844101', 4800.0, 5000.0, 'CO_ED', 'Modern PG situated adjacent to Hajipur Junction. Convenient commuting to Patna via Digha Bridge.', 'Late night entry with prior intimation only.', '9835234567', 'vaishalipg@example.com', 'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?auto=format&fit=crop&w=800&q=80', TRUE, 'Active'),
(8, 6, 'Puja Girls PG', 'Beta 1, B-Block, Near Jagat Farm Market', 'Greater Noida', 'Uttar Pradesh', '201308', 6000.0, 7000.0, 'GIRLS', 'Safe, peaceful, and fully-furnished Girls PG located in Beta 1, B-Block, right next to Jagat Farm Market, Greater Noida.', 'Gate closes at 9:30 PM. Silence hours after 10:00 PM.', '9876543210', 'monalsinghrajput1310@gmail.com', 'https://images.unsplash.com/photo-1595526114035-0d45ed16cfbf?auto=format&fit=crop&w=800&q=80', TRUE, 'Active'),
(9, 2, 'Knowledge Park Residency & PG', 'Plot 12, Knowledge Park II, Near Pari Chowk Metro', 'Greater Noida', 'Uttar Pradesh', '201310', 7000.0, 10000.0, 'CO_ED', 'Top-rated student accommodation in Knowledge Park II. Walking distance from major colleges, Galgotias, Sharda University, and Pari Chowk metro.', 'Entry allowed until 10:30 PM with smart card.', '9811223344', 'knowledgeparkpg@example.com', 'https://images.unsplash.com/photo-1566665797739-1674de7a421a?auto=format&fit=crop&w=800&q=80', TRUE, 'Active');

-- 3. INSERT AMENITIES
INSERT INTO property_amenities (property_id, amenity) VALUES
(1, 'High-speed Wi-Fi'), (1, '3-Time Homestyle Food'), (1, 'Daily Housekeeping'), (1, 'CCTV Surveillance'), (1, 'Power Backup'),
(2, 'High-speed Wi-Fi'), (2, 'Biometric Access'), (2, 'North & South Indian Meals'), (2, 'Air Conditioning'), (2, 'RO Water'),
(3, 'High-speed Wi-Fi'), (3, 'Coworking Space'), (3, 'Gym & Games'), (3, 'All-Meals Included'), (3, 'Lift'),
(4, 'High-speed Wi-Fi'), (4, 'Buffet Breakfast & Dinner'), (4, 'Attached Washrooms'), (4, 'Laundry Facility'), (4, 'CCTV'),
(5, 'High-speed Wi-Fi'), (5, '3-Time Hygienic Food'), (5, 'Study Table & Chair'), (5, 'RO Drinking Water'), (5, 'CCTV Security'),
(6, 'Wi-Fi'), (6, 'Daily Breakfast & Dinner'), (6, 'Bike Parking'), (6, 'Inverter Backup'), (6, 'Geyser'),
(7, 'High-speed Wi-Fi'), (7, 'Homestyle Food'), (7, 'RO Water'), (7, 'Parking Space'), (7, 'CCTV'),
(8, 'High-speed Wi-Fi'), (8, '3-Time Homestyle Food'), (8, 'RO Water'), (8, 'CCTV Security'), (8, 'Study Table & Chair'),
(9, 'High-speed Wi-Fi'), (9, '3-Time Hygienic Food'), (9, 'Air Conditioning'), (9, 'Power Backup'), (9, 'Gym & Games');

-- 4. INSERT ROOMS
INSERT INTO rooms (room_id, property_id, room_type, room_number, rent, capacity, available_rooms, ac_available) VALUES
(1, 1, 'SINGLE', '101', 12000.0, 1, 3, TRUE),
(2, 1, 'DOUBLE', '102', 7500.0, 2, 6, TRUE),
(3, 1, 'TRIPLE', '103', 6000.0, 3, 9, FALSE),
(4, 2, 'SINGLE', '201', 14000.0, 1, 2, TRUE),
(5, 2, 'DOUBLE', '202', 8000.0, 2, 8, TRUE),
(6, 2, 'TRIPLE', '203', 6500.0, 3, 6, FALSE),
(7, 3, 'SINGLE', '301', 16000.0, 1, 4, TRUE),
(8, 3, 'DOUBLE', '302', 9500.0, 2, 10, TRUE),
(9, 4, 'DOUBLE', '401', 7500.0, 2, 5, TRUE),
(10, 4, 'FOUR_SHARING', '402', 5500.0, 4, 12, FALSE),
(11, 5, 'SINGLE', 'G-101', 9000.0, 1, 3, TRUE),
(12, 5, 'DOUBLE', 'G-102', 6500.0, 2, 8, FALSE),
(13, 6, 'SINGLE', 'B-201', 8000.0, 1, 2, TRUE),
(14, 6, 'DOUBLE', 'B-202', 5500.0, 2, 6, FALSE),
(15, 7, 'DOUBLE', 'V-101', 4800.0, 2, 6, FALSE),
(16, 8, 'SINGLE', 'P-101', 8500.0, 1, 3, TRUE),
(17, 8, 'DOUBLE', 'P-102', 6000.0, 2, 6, FALSE),
(18, 8, 'TRIPLE', 'P-103', 4500.0, 3, 6, FALSE),
(19, 9, 'SINGLE', 'KP-101', 11000.0, 1, 4, TRUE),
(20, 9, 'DOUBLE', 'KP-102', 7000.0, 2, 8, TRUE),
(21, 9, 'TRIPLE', 'KP-103', 5500.0, 3, 6, FALSE);

-- 5. INSERT BOOKINGS
INSERT INTO bookings (booking_id, user_id, property_id, room_id, booking_date, check_in_date, check_out_date, duration_months, status, remarks) VALUES
(1, 4, 1, 2, CURRENT_DATE - 5, CURRENT_DATE + 2, CURRENT_DATE + 92, 3, 'APPROVED', 'Internship at Infosys Electronic City.'),
(2, 5, 2, 5, CURRENT_DATE - 1, CURRENT_DATE + 7, CURRENT_DATE + 187, 6, 'PENDING', 'MBA student at Symbiosis.');

-- 6. INSERT REVIEWS
INSERT INTO reviews (review_id, user_id, property_id, rating, comment) VALUES
(1, 4, 1, 5, 'Amazing food and super fast Wi-Fi! The owner Rajesh is very helpful.'),
(2, 5, 2, 4, 'Very safe environment for girls, clean rooms and walking distance to college.');
