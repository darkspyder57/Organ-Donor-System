<%@page import ="com.ConnectionProvider"%>
<%@page import ="java.sql.*" %>
<%
String mobilenumber =request.getParameter("mobilenumber");
try
{
	Connection con=ConnectionProvider.con();
     PreparedStatement ps =con.prepareStatement("update organtype set status='completed' where mobilenumber=?");
     ps.setString(1,mobilenumber);
     ps.executeUpdate();
     response.sendRedirect("requestForBlood.jsp");
}
catch(Exception e)
{
	response.sendRedirect("requestForBlood.jsp");
}
     %>