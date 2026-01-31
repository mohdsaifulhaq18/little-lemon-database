USE LittleLemonDB;

DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
    SELECT MAX(Quantity) AS MaxQuantity FROM Orders;
END //

CREATE PROCEDURE ManageBooking(
    IN booking_date DATE,
    IN table_number INT
)
BEGIN
    DECLARE bookingCount INT;

    SELECT COUNT(*) INTO bookingCount
    FROM Bookings
    WHERE BookingDate = booking_date
      AND TableNumber = table_number;

    IF bookingCount > 0 THEN
        SELECT 'Table already booked' AS Status;
    ELSE
        SELECT 'Table available' AS Status;
    END IF;
END //

CREATE PROCEDURE AddBooking(
    IN booking_date DATE,
    IN table_number INT,
    IN customer_id INT
)
BEGIN
    INSERT INTO Bookings (BookingDate, TableNumber, CustomerID)
    VALUES (booking_date, table_number, customer_id);
END //

CREATE PROCEDURE UpdateBooking(
    IN booking_id INT,
    IN new_date DATE
)
BEGIN
    UPDATE Bookings
    SET BookingDate = new_date
    WHERE BookingID = booking_id;
END //

CREATE PROCEDURE CancelBooking(
    IN booking_id INT
)
BEGIN
    DELETE FROM Bookings WHERE BookingID = booking_id;
END //

DELIMITER ;
