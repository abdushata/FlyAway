<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Logout</title>
</head>
<body>
	<%
	session.invalidate();
	%>
	<b>Your Session has terminated</b>
	<a href="AdminLogin.jsp">Login again</a>
</body>
</html>