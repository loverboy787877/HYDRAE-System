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
<body>
Data Deleted Successfully!
Go back to <a href= "booking_list.jsp">appointment list</a>
</body>
</html>