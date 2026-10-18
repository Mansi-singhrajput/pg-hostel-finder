# PROJECT DESIGN REPORT (PDR)

## Project Title
**PG/Hostel Finder & Booking System**

---

## 1. Introduction
Finding suitable and affordable accommodation is a common problem for students and working professionals who move to a new city. Students often depend on friends, brokers, social media groups, or physically visit different locations to find a suitable PG or hostel.

The **PG/Hostel Finder & Booking System** is a web-based application designed to make this process easier. Users can search for PGs and hostels based on location, price, room type, facilities, and availability. Property owners can add and manage their properties and handle booking requests through the system.

The system provides a centralized platform where students can find accommodation without spending excessive time searching manually.

---

## 2. Problem Statement
Students moving to a new city face several difficulties while searching for PGs and hostels:
* Lack of reliable accommodation information.
* Difficulty finding accommodation within a specific budget.
* Limited information about facilities and room availability.
* Time-consuming physical visits to multiple properties.
* Difficulty comparing different PGs and hostels.
* Lack of a proper system for managing booking requests.
* Difficulty maintaining previous booking information.

Therefore, there is a need for a centralized system that allows users to search, compare, and request accommodation online.

---

## 3. Existing System
Currently, students commonly find accommodation through:
* Local brokers.
* Friends and relatives.
* Social media groups.
* Online advertisements.
* Direct visits to PGs and hostels.

### Limitations of Existing System
* Information may be incomplete or outdated.
* Students have limited filtering options.
* Availability is not always known.
* Comparing multiple properties is difficult.
* Booking requests are often handled manually.
* There is no centralized booking history.

---

## 4. Proposed System
The proposed **PG/Hostel Finder & Booking System** provides a centralized web platform for finding and requesting accommodation.

Users can create an account and search for available PGs or hostels according to their requirements. They can apply filters such as location, price, room type, gender preference, and facilities.

Property owners can register their properties, update room availability, manage booking requests, and maintain property information.

An administrator manages users, property listings, and the overall system.

---

## 5. Objectives
1. To provide a centralized platform for finding PGs and hostels.
2. To reduce the time required to search for accommodation.
3. To allow users to filter properties according to their requirements.
4. To provide information about price, facilities, location, and room availability.
5. To allow users to submit booking requests online.
6. To allow property owners to manage their listings.
7. To maintain booking history for users.
8. To provide an admin panel for managing the system.
9. To improve transparency and convenience in the accommodation-search process.

---

## 6. Scope of the Project
The system can be used by:
* Students & working professionals
* PG/hostel owners
* Administrators

The system will provide:
* Online property search & location/price filtering
* Property details & room availability
* Booking requests & approval workflow
* Owner property and room management
* Booking history & audit
* User and property verification/administration
* Reviews, ratings, and dashboard reports

---

## 7. Major Modules
- **7.1 User Module**: Registration, login/logout, profile management, property search, filters, details, booking requests, status tracking, booking history.
- **7.2 PG/Hostel Search Module**: Search by location/name, filter by price/type/facilities/availability, sort by price.
- **7.3 Property Details Module**: Name, address, rent, deposit, room types, available rooms, facilities, rules, contact info, images.
- **7.4 Booking Request Module**: Request submission, owner review (Accept/Reject), live status updates.
- **7.5 Property Owner Module**: Owner auth, property CRUD, room CRUD, image upload, booking management.
- **7.6 Admin Module**: User/owner management, listing verification/moderation, booking oversight, reports and analytics.
- **7.7 Booking History Module**: Complete historical logs of past and current bookings.
- **7.8 Feedback and Review Module**: Post-stay ratings and reviews for quality assurance.

---

## 8. Database Design Summary
- **Users**: `user_id`, `name`, `email`, `phone`, `password`, `role` (USER, OWNER, ADMIN)
- **Properties**: `property_id`, `owner_id`, `property_name`, `address`, `city`, `rent`, `deposit`, `description`, `status`
- **Rooms**: `room_id`, `property_id`, `room_type`, `rent`, `capacity`, `available_rooms`
- **Bookings**: `booking_id`, `user_id`, `property_id`, `room_id`, `booking_date`, `check_in_date`, `status`
- **Reviews**: `review_id`, `user_id`, `property_id`, `rating`, `comment`, `review_date`

---

## 9. Technology Stack
- **Frontend**: HTML5, CSS3, JavaScript (ES6+), Bootstrap 5
- **Backend**: Java, Spring Boot (Spring MVC, Spring Data JPA, Spring Security)
- **Database**: MySQL / H2 / Oracle
- **Architecture**: RESTful API / Layered Architecture (Controller - Service - Repository)
