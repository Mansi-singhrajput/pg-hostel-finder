# PG & Hostel Finder and Booking System

[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.2.5-brightgreen.svg)](https://spring.io/projects/spring-boot)
[![Java](https://img.shields.io/badge/Java-17%2B-orange.svg)](https://www.oracle.com/java/)
[![Bootstrap](https://img.shields.io/badge/Bootstrap-5.3-purple.svg)](https://getbootstrap.com/)
[![Database](https://img.shields.io/badge/Database-H2%20%7C%20MySQL-blue.svg)](https://www.mysql.com/)

A full-stack web application designed for students and working professionals to search, compare, and request PG/Hostel accommodations without brokerage fees. Property owners can list their accommodations, track room vacancies, and manage booking requests in real time.

---

## 📌 Project Highlights & Modules (Matching PDR)

| Module | Description | Key Features |
| :--- | :--- | :--- |
| **1. User Module** | Student / tenant account lifecycle | Registration, Login, Session tracking, Profile overview |
| **2. PG/Hostel Search** | Dynamic property discovery | Filter by City, Price slider, Gender type (Boys/Girls/Co-ed), Amenities, and Price sorting |
| **3. Property Details** | Rich accommodation showcase | Photo gallery, rent, deposit, owner contact, room types with live bed counters, rules & amenities |
| **4. Booking Request** | Streamlined booking workflow | Room selection, check-in date picker, duration in months, instant request submission |
| **5. Property Owner** | Accommodation & tenant management | Listing publishing, room inventory configuration, 1-click booking request approval/rejection |
| **6. Admin Command Center** | Platform moderation & oversight | System-wide metrics, verify/unverify listings, active/inactive toggles, user accounts audit |
| **7. Booking History** | Centralized booking tracking | Live status badges (`PENDING`, `APPROVED`, `REJECTED`, `CANCELLED`), request cancellation |
| **8. Feedback & Reviews** | Community rating system | 1–5 Star ratings, resident comments, verified reviews display |

---

## 🛠️ Technology Stack

* **Backend Framework**: Java 17+, Spring Boot 3.2.5 (Spring MVC, Spring Data JPA, Spring Validation)
* **Frontend**: HTML5, CSS3, JavaScript (ES6+), Bootstrap 5, Bootstrap Icons
* **Database**:
  * **H2 In-Memory Database** (Default for instant zero-configuration local runs)
  * **MySQL 8.0+ / Oracle** (Production-ready via `schema.sql` and `application.properties`)
* **API Architecture**: RESTful API with JSON responses
* **Build Tool**: Apache Maven

---

## 🚀 Quick Start Guide

### 1. Prerequisites
* **Java Development Kit (JDK)**: Version 17 or higher installed (`java -version`)
* **Maven**: Version 3.8+ installed (or open directly in IntelliJ IDEA / VS Code)

### 2. Run the Application
In your terminal, navigate to the project directory and run:

```bash
mvn spring-boot:run
```

Alternatively, open the project in **IntelliJ IDEA** or **VS Code**, locate `PghFinderApplication.java`, and run the `main` method.

### 3. Open in Browser
Once started, visit:
* **Web Application**: [http://localhost:8081](http://localhost:8081)
* **H2 Database Console**: [http://localhost:8081/h2-console](http://localhost:8081/h2-console)
  * **JDBC URL**: `jdbc:h2:mem:pghfinderdb`
  * **Username**: `sa`
  * **Password**: `password`

---

## 🔑 Pre-Seeded Demo Credentials

The database is pre-populated with realistic properties (Bangalore, Pune, Delhi NCR, Hyderabad), rooms, bookings, and test users:

| Role | Email | Password | Dashboard URL |
| :--- | :--- | :--- | :--- |
| **Administrator** | `admin@pghfinder.com` | `admin123` | [dashboard-admin.html](http://localhost:8081/dashboard-admin.html) |
| **Property Owner** | `rajesh.owner@example.com` | `owner123` | [dashboard-owner.html](http://localhost:8081/dashboard-owner.html) |
| **Property Owner 2** | `priya.owner@example.com` | `owner123` | [dashboard-owner.html](http://localhost:8081/dashboard-owner.html) |
| **Student / Tenant** | `rahul.student@example.com` | `user123` | [dashboard-user.html](http://localhost:8081/dashboard-user.html) |
| **Student / Tenant 2** | `sneha.student@example.com` | `user123` | [dashboard-user.html](http://localhost:8081/dashboard-user.html) |

> 💡 *Note: The Login page features **1-Click Demo Login buttons** so you can switch roles instantly without typing.*

---

## 🗄️ Database Schema & Switching to MySQL

To use **MySQL** instead of the in-memory H2 database:

1. Create a database in MySQL:
   ```sql
   CREATE DATABASE pghfinder_db;
   ```
2. (Optional) Run the provided `schema.sql` and `data.sql` scripts in MySQL Workbench.
3. In `src/main/resources/application.properties`, uncomment the MySQL block:
   ```properties
   spring.datasource.url=jdbc:mysql://localhost:3306/pghfinder_db?createDatabaseIfNotExist=true&useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC
   spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
   spring.datasource.username=root
   spring.datasource.password=YOUR_MYSQL_PASSWORD
   spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQLDialect
   ```

---

## 📡 REST API Reference

### Authentication
* `POST /api/auth/register` - Register a new user or property owner
* `POST /api/auth/login` - Authenticate user credentials
* `GET  /api/auth/user/{id}` - Fetch user details

### Properties
* `GET    /api/properties` - Search and filter active properties (`?city=&genderType=&minRent=&maxRent=&keyword=`)
* `GET    /api/properties/all` - List all properties (for Admin moderation)
* `GET    /api/properties/{id}` - View full property details including rooms & reviews
* `GET    /api/properties/owner/{ownerId}` - List properties belonging to a specific owner
* `POST   /api/properties?ownerId={id}` - Create a new property listing
* `PUT    /api/properties/{id}` - Update property information
* `PATCH  /api/properties/{id}/verify` - Toggle admin verification status
* `PATCH  /api/properties/{id}/status` - Toggle Active/Inactive status
* `DELETE /api/properties/{id}` - Delete property listing

### Rooms
* `GET    /api/rooms/property/{propertyId}` - List all rooms in a property
* `POST   /api/rooms/property/{propertyId}` - Add a new room/inventory
* `PUT    /api/rooms/{id}` - Update room capacity or availability
* `DELETE /api/rooms/{id}` - Delete a room

### Bookings
* `POST  /api/bookings` - Submit a booking request
* `GET   /api/bookings/user/{userId}` - Get user's booking history
* `GET   /api/bookings/owner/{ownerId}` - Get owner's incoming booking requests
* `GET   /api/bookings/all` - View all bookings across the platform
* `PATCH /api/bookings/{id}/status?status=APPROVED` - Owner accepts/rejects booking request

### Reviews
* `POST /api/reviews` - Post rating and comment for a property
* `GET  /api/reviews/property/{propertyId}` - Fetch reviews for a property

### Admin
* `GET    /api/admin/stats` - Platform statistics (students, owners, active listings, bookings)
* `GET    /api/admin/users` - View all registered accounts
* `DELETE /api/admin/users/{id}` - Remove a user account

---

## 📂 Project Structure

```
├── pom.xml                               # Maven build dependencies
├── README.md                             # Project documentation
├── PROJECT_DESIGN_REPORT.md              # Project Design Report (PDR)
├── schema.sql                            # Relational database schema
├── data.sql                              # Seed sample dataset
└── src/main/
    ├── java/com/hostel/pghfinder/
    │   ├── PghFinderApplication.java     # Spring Boot application entrypoint
    │   ├── config/
    │   │   ├── CorsConfig.java           # Cross-Origin resource sharing
    │   │   └── DataInitializer.java      # Automatic database seed loader
    │   ├── controller/                   # REST API Controllers
    │   ├── dto/                          # Data Transfer Objects
    │   ├── entity/                       # JPA Hibernate Entities
    │   ├── repository/                   # Spring Data JPA Repositories
    │   └── service/                      # Business Logic Services
    └── resources/
        ├── application.properties        # App & database configuration
        └── static/                       # Frontend Web UI (HTML, CSS, JS)
            ├── index.html                # Landing page & quick search
            ├── search.html               # Advanced search & filter
            ├── property-details.html     # Property view & booking modal
            ├── login.html                # Auth login with demo credentials
            ├── register.html             # User/Owner registration
            ├── dashboard-user.html       # Student booking dashboard
            ├── dashboard-owner.html      # Owner management portal
            ├── dashboard-admin.html      # Administrator control center
            ├── css/style.css             # Main styling sheet
            └── js/                       # Modular JavaScript controllers
```
