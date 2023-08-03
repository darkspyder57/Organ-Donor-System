<%
String username =request.getParameter("username");
String password=request.getParameter("password");

if("root".equals(username)&&"mohnish".equals(password))
{
	response.sendRedirect("home.jsp");
}
else {
	response.sendRedirect("adminLogin.jsp?msg=invalid");
}
%>   