<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String userid=request.getParameter("userid");
String password=request.getParameter("password");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hydrae", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into users(fname,lname,email,userid,password)values('"+fname+"','"+lname+"','"+email+"','"+userid+"','"+password+"')");
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
 <title>
     Booking Successful
 </title>
 </head>
 <body> 
 <header>

            <div class="main">
                <div class="logo">
                    <img src="images/logo.png">
                </div>
            </div>
            <div class="title">
            <h1> Registration Successful. </h1>
            </div>
            <div class="button">
                <a href="login.jsp" class="btn"> Sign in </a>
            </div>
        </header>
 
 </body>
 </html>