<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String booking_id=request.getParameter("booking_id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hydrae", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM booking WHERE booking_id="+booking_id);

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<html>
	<link rel="stylesheet" type="text/css" href="css/style1.css">
	<style>
	h1 {
	  	text-align: center;
	}
	</style>
<body>
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
					<li><a href="booking_list.jsp">Appointments</a> </li>
			    </ul>
		        </div>
			    
			</div>	
			<div class="title">
			<h1> Your Schedule has been deleted successfully.</h1>
			</div>
			<div class="button">
				<a href="booking_list.jsp" class="btn"> Back </a>
			</div>	
		</header>
</body>
</html>