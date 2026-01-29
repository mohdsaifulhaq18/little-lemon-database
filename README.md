# Little Lemon Database Project

This repository contains the Little Lemon database project created as part of a peer-graded assignment. The project focuses on designing and implementing a relational database for a restaurant booking system using MySQL, along with Python connectivity and data analysis using Tableau.

The main objective of this project is to manage restaurant bookings, customers, menu items, and orders efficiently, while demonstrating the use of stored procedures and data visualization tools.

---

## Project Overview

In this project, a database was created to store booking and order information for the Little Lemon restaurant. The database design includes multiple related tables and stored procedures that handle booking operations such as adding, updating, checking availability, and canceling bookings.

The project also demonstrates how to connect the MySQL database using Python and how to analyze the data using Tableau dashboards.

---

## Database Design

The database was designed using MySQL Workbench. It follows a relational structure with primary and foreign keys to maintain data integrity.

The ER diagram included in this repository shows the relationships between tables such as Customers, Bookings, Orders, and Menu.

---

## Stored Procedures

The following stored procedures were implemented as required by the assignment:

- **GetMaxQuantity()**  
  Returns the maximum quantity ordered from the Orders table.

- **ManageBooking()**  
  Checks whether a table is already booked on a specific date.

- **AddBooking()**  
  Adds a new booking to the Bookings table.

- **UpdateBooking()**  
  Updates the booking date for an existing booking.

- **CancelBooking()**  
  Removes a booking from the database.

All procedures were tested using SQL `CALL` statements.

---

## Python and MySQL Connection

A Python script is included to demonstrate how to connect to the Little Lemon MySQL database using a Python client. The script executes stored procedures and displays the results, showing how database operations can be handled programmatically.

---

## Data Analysis with Tableau

The Little Lemon database was connected to Tableau to perform data analysis and generate visual reports. The Tableau workbook includes worksheets and dashboards that provide insights such as:

- Booking trends
- Order quantities
- Revenue analysis
- Menu item performance

Screenshots and the Tableau workbook file are included in this repository.

---

## Repository Contents

This repository includes:

- ER diagram in PNG format
- MySQL database schema SQL file
- SQL file containing stored procedures
- Python database connection script or screenshots
- Tableau workbook and dashboard screenshots

---

## How to Use This Project

1. Import the SQL schema into MySQL Workbench.
2. Execute the stored procedures SQL file.
3. (Optional) Run the Python script to test database connectivity.
4. Open the Tableau workbook to explore the dashboards.

---

## Notes

- This project was created for academic and learning purposes.
- Sample data has been used for testing.
- The project follows all requirements specified in the assignment brief.

---

## Author

**Mohammad Saiful Haque**
