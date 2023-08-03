<!DOCTYPE html>
<html lang="en">
<head>

 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
	border-radius: 25px;
}
.background-image{
  background-image:url('./Blood Bank Management System/src/main/webapp/BBMS - html,css & images/BBMS - html,css & images/cutm.jpg')
  background-size:contain;
  background-repeat:no-repeat;
  width:200px;
  height:100vh;

}
</style>
</head>
<body>
<div class="header">
  <a href="#default" class="logo"><img class="logo" src="b5.png" ></a>
  <div class="header-right">
  
    <a href="index.jsp">Home</a>
    <a class="active" href="adminLogin.jsp">Admin Login</a>
  </div>
</div>
<body>
<div class="container">
<br>
	<br>
	<%
  String msg=request.getParameter("msg");
  if("invalid".equals(msg))
  {
	%>
	<center><font color="red" size="5">Invalid Usernamen/Password</font></center>  
	<% 
  }%>
<form action="adminLoginAction.jsp" method="post">
<div class ="form-group">
<center><h2> Username</h2></center>
<input type="text" placeholder="Enter Username" name="username" required>
<center><h2> Password </h2></center>
 <input type="password" placeholder="Enter Password" name="password" required>
 <center> <button type="submit" class="button">Submit</button></center>
</div>
</form>
<img class="image" src="od2.png" >
	
	
	
</div>
<br>
<br>
<br>
<br>
<h3><center>Advanced JAVA Programming-BTech(2020-2024)  </center></h3>
</body>
</html>
