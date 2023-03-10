<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
</head>
<body>
<%
	if(session.getAttribute("name")==null)
		response.sendRedirect("AdminLogin.jsp?error=1");
	
%>

<b>Hello <%session.getAttribute("name");%></b><br>
<a href="pwupdate.jsp">Click here to update your password</a><br>

<form action="logout.jsp" metho="post">
<button>Logout</button>
<form action="index.jsp" metho="post">
<button>Main page</button>
</body>
</html>