<%@page import="com.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%
String id=request.getParameter("id");
try
{
	Connection con=ConnectionProvider.con();
	 Statement st =con.createStatement();
	 st.executeUpdate("delete from donor where id ='"+id+" ' ");
	 response.sendRedirect("editDeleteList.jsp?msg=deleted");
   }
catch (Exception e)
{
 	response.sendRedirect("editDeleteList.jsp?msg=invalid");
   }
%>