College Fee Payment System

Name: Rakesh Rajesh Pattar

USN: 4AL23CS405

Subject Name: Advanced Java

A comprehensive web application for managing College Fee Payment operations, including room bookings and customer records. Built using JSP, Servlets, and MySQL, following the MVC architecture for clean code separation.
🧰 Features :
Complete CRUD Operations: Add, update, delete, and display customer room records.
Room Booking System: Manage room availability, bookings, check-ins, and check-outs.
Billing System: Auto-generate final bill
Advanced Search: Search bookings by customer ID, name, or date range.
Input Validation: Both client-side and server-side validation for secure and clean data entry.
Professional UI: Bootstrap-based responsive and user-friendly interface.
MVC Architecture: Clean separation of Presentation (JSP), Controller (Servlet), and Model (JDBC/MySQL).
Database Integration: MySQL database with JDBC connectivity for real-time data management.
📋 Prerequisites :
Before running this application, ensure the following are installed:

Java Development Kit (JDK) 8 or higher !
Apache Tomcat 9.0 or higher !
MySQL Server 5.7+ or XAMPP Server !
MySQL JDBC Driver (mysql-connector-java) !
IDE: Eclipse (J2EE), IntelliJ IDEA, or any Java-compatible IDE !
Web Browser: Chrome, Edge, or Firefox !
🗂️🛠 Project Structure :
CollegeFeeWebApp/
├── WebContent/
│ ├── index.jsp
│ ├── feepaymentadd.jsp
│ ├── feepaymentupdate.jsp
│ ├── feepaymentdelete.jsp
│ ├── feepaymentdisplay.jsp
│ ├── reports.jsp
│ ├── report_form.jsp
│ └── report_result.jsp
├── src/
│ ├── com/
│ ├── dao/
│ │ └── FeePaymentDAO.java
│ ├── model/
│ │ └── FeePayment.java
│ └── servlet/
│ ├── AddFeePaymentServlet.java
│ ├── UpdateFeePaymentServlet.java
│ ├── DeleteFeePaymentServlet.java
│ ├── DisplayFeePaymentsServlet.java
│ ├── ReportServlet.java
│ └── ReportCriteriaServlet.java
└── WEB-INF/web.xml
🗄️ Database Setup :
1. Create Database :

CREATE DATABASE IF NOT EXISTS hotel_management;
USE hotel_management;
2. Create Table :
CREATE TABLE FeePayments (
PaymentID INT PRIMARY KEY AUTO_INCREMENT,
StudentID INT,
StudentName VARCHAR(100),
PaymentDate DATE,
Amount DECIMAL(10,2),
Status VARCHAR(20) -- e.g., Paid, Overdue
);
3. Insert Sample Data :
INSERT INTO Reservations VALUES
(2,	'Padmaraj K',	'12',	'2025-05-10',	'2025-05-28',	50000.00),
(3,	'Rohan',	'02', '2025-05-01',	'2025-05-02',	500.00),
(5,	'Raj',	'07',	'2025-05-07',	'2025-05-08',	1000.00)
⚙️ Installation & Setup :
Step 1: Clone/Download the Project;
Download all the project files and organize them based on the MVC project structure (Model, View, Controller, WEB-INF, etc.).

Step 2: Database Configuration :
Start your MySQL or XAMPP server.
Run the SQL script provided above to create the database and table:
Update the DB connection in ReservationDAO.java:
connection = DriverManager.getConnection(
 "jdbc:mysql://localhost:3306/hotel_management", 
 "your_username", 
 "your_password");
Step 3: Add MySQL JDBC Driver :
Download MySQL Connector/J from the official MySQL website.
Add the downloaded JAR file to your project’s WEB-INF/lib directory.
If using an IDE like Eclipse or IntelliJ, add it to your build path.
Step 4: Deploy to Tomcat :
Create a Dynamic Web Project in your IDE (Eclipse recommended).
Import all your Java source files, JSPs, and web resources.
Deploy the project on Tomcat (version 9.0 or higher).
Start the Tomcat server.
Step 5: Access the Application :
Open your browser and go to:

http://localhost:8080/HotelManagementSystem/
This will open your homepage with modules like Add New Reservation, Update Reservation, Cancel Reservation, View All Reservations, and Generate Reports — as seen in the UI.

📸 Screenshots :
🔹 Front Page -
Front Page

🔹 Add Reservation -
Add New Reservation

For More Related Images :- !! Add_Reservation 1 !!_!! Add_Reservation 2 !!
🔹 Update Reservation -
Update Reservation

For More Related Images :- !! Update_1 !!_!! Update_2 !!_!! Update_3 !!_!! Update_4 !!
🔹 Cancel Reservation -
Cancel Reservation

For More Related Images :- !! Cancel_1 !!_!! Cancel_2 !!_!! Cancel_3 !!
🔹 View All Reservations -
View All Reservations

For More Related Images :- !! All_Reservations_1 !!_!! All_Reservations_2 !!
🔹 Generate Reports -
📅 Reservations in a Date Range -
Reservations in a Date Range

🏡 Rooms Booked Most Frequently -
Rooms Booked Most Frequently

💸 Total Revenue Over a Period -
Total Revenue Over a Period

🅿️ Reservations By Customer Name -
Reservations By Customer Name

For More Related Images :- !! Report_1 !!_!! Report_2 !!_!! Report_3 !!_!! Report_4 !!_!! Report_5 !!_!! Report_6 !!_!! Report_7 !!_!! Report_8 !!_!! Report_9 !!_
🎯 Usage Application :
🏨 Add New Reservation :-
Navigate to "Add New Reservation" from the homepage.
Fill in the reservation form:
Customer Name. Room Number. Check-in and Check-out Dates. Total Amount.

Click "Add Reservation" to save the booking.
✏️ Update Reservation :-
Go to "Update Reservation".
Search For The Reservation by Id.
Edit Reservation Details:
Customer Name. Room Number. Check-in and Check-out Dates. Total Amount.

Click "Update Reservation" to apply the changes.
❌ Cancel Reservation :-
Open "Cancel Reservation" from the menu.
Search for the reservation using Reservation ID.
Confirm the cancellation by clicking "Confirm Cancellation".
The reservation will be removed from the system.
📋 View All Reservations :-
Navigate to "View All Reservations".
The system will display all active reservations.
📊 Generate Reports :-
Click on "Generate Reports" from the homepage.
Choose the type of report:
Reservations in a Date Range. Rooms Booked Most Frequently. Total Revenue Over a Period. Reservations By Customer Name.

Click "Generate Report" to See the report.
🧪 Testing the Application :
Test Cases to Verify :-
Add Reservation:

Add valid reservation details. Try adding overlapping bookings for the same room. Test form validation.

Update Reservation:

Update an existing reservation's check-in/check-out dates or room number. Attempt to update a non-existent reservation ID (should show error). Check if updates reflect correctly in the system.

Cancel Reservation:

Cancel a valid reservation by ID. Attempt to cancel a non-existent reservation (should fail gracefully). Confirm that canceled reservations are removed from the list.

View All Reservations:

Load and display all current reservations. Verify it. Check responsiveness of the view under high data load.

Generate Reports:

Generate reports for bookings made in a specific time period. Generate reports for bookings a Most Frequently rooms. Generate reports for Total Revenue Over a Period. Generate reports for Reservations By Customer Name. Validate accuracy of report data (total bookings, specific time period, etc.).

✅ Project Highlights :
This project demonstrates :-

🧩 MVC Architecture :-
Ensures a clear separation of concerns between the Model (business logic), View (UI), and Controller (request handling).

🗃️ Database Integration :-
Full CRUD operations performed using MySQL, enabling persistent data storage for reservations and reports.

🌐 Web Technologies :-
Developed using JSP, Servlets, HTML, CSS, and JavaScript to create dynamic and interactive web pages.

✅ Input Validation :-
Implements both client-side (JavaScript) and server-side (Servlet) validations for data integrity and security.

📊 Report Generation :-
Dynamically generates booking reports for analysis and decision-making.

🎨 Professional UI :-
Features a clean, responsive user interface styled with Bootstrap for enhanced usability and modern appearance.

----------------> THANK_YOU <----------------
