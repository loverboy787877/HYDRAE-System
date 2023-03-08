<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String booking_details=request.getParameter("booking_details");
String booking_time=request.getParameter("booking_time");

try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hydrae", "root", "");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into booking(booking_details,booking_time)values('"+booking_details+"','"+booking_time+"')");
        out.println("Booking schedule set successfully. Please wait for the technician's call regarding your booking request.");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 %>