<%@page import="com.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String father=request.getParameter("father");
String mother=request.getParameter("mother");
String mobilenumber=request.getParameter("mobilenumber");
String email=request.getParameter("email");
String address=request.getParameter("address");
try
{
	Connection con=ConnectionProvider.con();
    PreparedStatement ps=con.prepareStatement("update donor set name=?,father=?,mother=?,mobilenumber=?,email=?,address=?");
    ps.setString(1,id);
	ps.setString(2,name);
	ps.setString(3,father);
	ps.setString(4,mother);  
	ps.setString(5,mobilenumber);
	ps.setString(7,email);
	ps.setString(9,address);
    response.sendRedirect("editDeleteList.jsp?msg=valid");
}
catch(Exception e)
{
	response.sendRedirect("editDeleteList.jsp?msg=invalid");
}

%>