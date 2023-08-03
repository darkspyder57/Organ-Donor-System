<%@page import ="com.ConnectionProvider" %>
<%@page import ="java.sql.*" %>
<%
String mobilenumber =request.getParameter("mobilenumber");
try
{
	 Connection con=ConnectionProvider.con();
     Statement st=con.createStatement();
     st.executeUpdate("delete from organtype where mobilenumber='"+mobilenumber+"'");
     response.sendRedirect("requestForBlood.jsp");
}
catch(Exception e)
{
	response.sendRedirect("requestForBlood.jsp");
}
     %>