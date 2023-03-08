<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/hydrae";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String booking_id = request.getParameter("booking_id");
String booking_details=request.getParameter("booking_details");
String booking_time=request.getParameter("booking_time");

if(booking_id != null)
{
Connection con = null;
int personID = Integer.parseInt(booking_id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
PreparedStatement ps = con.prepareStatement("Update booking set booking_id=?,booking_details=?,booking_time=? where booking_id="+booking_id);
ps.setString(1, booking_id);
ps.setString(2, booking_details);
ps.setString(3, booking_time);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException ps)
{
request.setAttribute("error", ps);
out.println(ps);

}
}
%>