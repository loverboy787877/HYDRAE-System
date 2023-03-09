<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String booking_id = request.getParameter("booking_id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "hydrae";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from booking where booking_id="+booking_id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
        <link rel="stylesheet" href="css/booking.css">
<body background="images/homebg.png" style="background-repeat:no-repeat; background-size: cover;">
<center><h1>Update data from database in jsp</h1>
<form method="post" action="edit_appointment_process.jsp">
<div class = "form-row">
<input type="hidden" name="booking_id" value="<%=resultSet.getString("booking_id") %>">
<div class = "form-row">
<input type="text" name="booking_id" value="<%=resultSet.getString("booking_id") %>">
</div>
Booking Details:<br>
<input type="text" name="booking_details" value="<%=resultSet.getString("booking_details") %>">
<br>
</div>
<div class = "form-row">
Booking Time:<br>
<input type="time" id="appt" name="booking_time"
min="00:00" max="24:00" required
value="<%=resultSet.getString("booking_time") %>">
<br>
</div>

<div class = "form-row">
                            
<input type = "submit" value = "UPDATE">

</div>
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>