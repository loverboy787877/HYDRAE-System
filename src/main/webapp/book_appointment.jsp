<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<form method="post" action="book_appointment_process.jsp">
<p> BOOK APPOINTMENT: </p>

Booking Details:<br>
<input type="text" name="booking_details">
<br>
Booking Time: <br>
<input type="time" id="appt" name="booking_time"
       min="09:00" max="18:00" required>

<small>Office hours are 12am to 6pm</small>
<br>
<br><br>
<input type="submit" value="Submit">
</form>
</body>
</html>