<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
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
<html lang="en-US">
<head>
	<title>
		Appointment List	
	</title>
	<style>
		body {
			background-image: url("images/homebg.png");
			background-repeat: no-repeat;
			background-size: cover;
			background-attachment: fixed;
		}
		*{
			margin: 0;
			padding: 0;
			font-family: Times new roman;
		}
		.center {
		  margin-right: auto;
		  margin-left: auto;
		}
		table, th, td {
			border: 1px solid;
			font-size: 20px;
		}
		th,td {
			padding: 15px;
			text-align: left;
		}
		h3 {
			text-align: center;
		}
		caption {
			font-size: 30px;
		}
		tr:hover {
			background-color: gray;
		}

		.logout{
			margin-left: 20px;	
		}
		
		ul{
			float:right;
			list-style-type: none;
			margin-top: 35px;
			margin-right: 20px;
			
		}
		ul li{
			display: inline-block;
			
		}	
		ul li a{
			border: 1px solid #dde7c7; 
			border-radius: 20px;
			border-spacing: 15px 50px;
			padding: 10px 30px;
			color: #fff;
			text-decoration: none;
			transition: 0.6s ease;
		}	
		ul li a:hover{
			background-color:#3a5a40;  
			color:#fff;	
			
		}
		.logo img{
			float: left;
			width: 350px;
			height: auto;
			
		}	
		.main{
			max-width: 1200px;
			margin: auto;
		
		}
	</style>
</head>
		<header>
			<div class="main">
				<div class="logo">
					<img src="images/logo.png">
				</div>	
				<ul>
					<li><a href="login.jsp"> Sign out </a> </li>
				</ul>
				<div class= "logout"> 	
				<ul> 
					<li><a href="home.html">Home</a> </li>
			    </ul>
		        </div>
			    
			</div>
		</header>
<body>
	<div style="padding: 100px;">
		                                 
	</div>
	
	
<div class="center">
<table>
	<caption>
		List of Appointments
	</caption>
<tr>
<td>booking_id</td>
<td>booking_details</td>
<td>booking_time</td>
<td>booking_date</td>
<td>phone_number</td>
</tr>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from booking";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("booking_id") %></td>
<td><%=resultSet.getString("booking_details") %></td>
<td><%=resultSet.getString("booking_time") %></td>
<td><%=resultSet.getString("booking_date") %></td>
<td><%=resultSet.getString("phone_number") %></td>

<td><a href="edit_appointment.jsp?booking_id=<%=resultSet.getString("booking_id")%>">Update</a></td>
<td><a href="delete_booking.jsp?booking_id=<%=resultSet.getString("booking_id") %>">Delete</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
<h3>
	Want to book an appointment? Click <a href="book_appointment.jsp">here</a>
</h3>


</body>
</html>