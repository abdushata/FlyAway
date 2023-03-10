<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<h1>Welcome to FlyAway</h1>
<h2>The best Air line booking company</h2>
<h3>Admin Login</h3>
</head>
<body>
<%
if (request.getParameter("error") != null)
    out.println("<b>Wrong Username or password</b><br>");
%>
<form action="Login.jsp" metho="post">
<b>Name</b><input name= "name" id="name" maxlength=40><br>
<b>Password</b>	 <input type = "password" name = "pwd" maxlength = "10"><br>
<button>Submit</button>
</form>

</body>
</html>