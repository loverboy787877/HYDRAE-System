<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String booking_details=request.getParameter("booking_details");
String booking_time=request.getParameter("booking_time");
String booking_date=request.getParameter("booking_date");
String phone_number=request.getParameter("phone_number");

try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hydrae", "root", "");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into booking(booking_details,booking_time,booking_date,phone_number)values('"+booking_details+"','"+booking_time+"','"+booking_date+"','"+phone_number+"')");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 %>
 <html>
 <head>
 <link rel="stylesheet" type="text/css" href="css/style1.css">
 </head>
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
			<h1> Your Schedule is set successfully. </h1>
			</div>
			<div class="button">
				<a href="booking_list.jsp" class="btn"> Back </a>
			</div>	
		</header>
 
 </body>
 </html>