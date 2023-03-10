<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<h1>Welcome to FlyAway</h1>
<h2>The best Air line booking company</h2>
<h3>Main page</h3>
</head>
<body>

<form action="searchFlight.jsp" method="post">
<b>From</b><input name= "source" id="source" maxlength=40>
<b>to</b><input name= "dest" id="dest" maxlength=40>
<b>date</b><input type= "date" name= "date" id="date" maxlength=40><br><br>

<button>Search Flight</button>
</form><br>

<form action="AdminLogin.jsp" method="post">
<button>Admin Login</button>
</form>

</body>
</html>