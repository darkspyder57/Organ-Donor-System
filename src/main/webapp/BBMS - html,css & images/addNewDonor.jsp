<%@page import ="com.ConnectionProvider" %>
<%@page import ="java.sql.*" %>
<%@include file="header.html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:60%;	
	border-radius: 25px;
	margin-left:20%;
}
h2,h1
{	
	margin-left:20%;
}
hr
{
width:60%;	
}
</style>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<center><font color ="red" size="5">Successfully Updated</font></center>
<%} %>
<% 
if("invalid".equals(msg))
{
%>
<center><font color ="red" size="5">Some thing went wrong !! Try Again!!</font></center>
<%
}
%>
<%
int id=1;
try
{
	Connection con=ConnectionProvider.con();
	Statement stmt=ConnectionProvider.con().createStatement();
	ResultSet rs=stmt.executeQuery("select max(id) from donor");
	if(rs.first())
	{
		id=rs.getInt(1);
		id=id+1;
	}
	%>
	<div class="container">
	<h1 style="color:red"> DONOR ID:<%out.println(id); %></h1>
	<% 
    }
catch(Exception e)
{}
%>
<div class="container">
<form action="addNewDonorAction.jsp" method="post">
<!-- <input type="text" name="id" value="<% out.println(id); %>"> -->

<h2> Id</h2>
<input type ="text" placeholder="Enter id" name="id">
<hr>
<h2> Name</h2>
<input type ="text" placeholder="Enter name" name="name">
<hr>
<h2>Father Name</h2>
<input type="text" placeholder="Enter Father Name" name="father">
<hr>
<h2>Mother Name</h2>
<input type="text" placeholder="Enter Mother Name" name="mother">
<hr>
<h2>Mobile Number</h2>
<input type="number" placeholder="Enter Mobile Number" name="mobilenumber">
<hr>
<h2>Gender</h2>
<select name="gender">
<option value ="male">Male</option>
<option value ="female">Female</option>
<option value ="other">Others</option>
</select>
<hr>
<h2>Email</h2>
<input type="email" placeholder="Enter Email" name="email">
<hr>
<h2>Organ Type</h2>
<select name="bloodgroup">
<option value="Heart">Heart</option>
<option value="Eye">Eye</option>
<option value="Kidney">kidney</option>
<option value="Lungs">lungs</option>
</select>
<hr>
<h2>Address</h2>
<input type="text" placeholder="Enter Address" name="address">
<br>
<center><button type="submit" class ="button">Save</button></center>
</form>
</div>






  </div>

<br>
<br>
<br>
<br>
<h3><center>Advanced JAVA Programming-BTech(2020-2024) </center></h3>

</body>
</html>