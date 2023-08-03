<%@page import ="com.ConnectionProvider" %>
<%@page import ="java.sql.*"%>
<%
String name=request.getParameter("name");
String mobilenumber=request.getParameter("mobilenumber");
String email=request.getParameter("email");
String organtype=request.getParameter("organtype");
String status="pending";
try
{
	Connection con=ConnectionProvider.con();
	PreparedStatement ps=con.prepareStatement("insert into OrganType values(?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,mobilenumber);
	ps.setString(3,email);
	ps.setString(4,organtype);
	ps.setString(5,status);
	ps.executeUpdate();
	response.sendRedirect("index.jsp?msg=valid");
}
catch (Exception e)
{
	response.sendRedirect("index.jsp?msg=invalid");
}
%>