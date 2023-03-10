<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
 <% 
    String fname= request.getParameter("fname");
    String lname = request.getParameter("lname"); 
    String cardn = request.getParameter("cardn"); 
    String Exdate = request.getParameter("Exdate"); 
    String scode = request.getParameter("scode"); 
    %>
    
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "flight";
String userid = "root";
String password = "1234";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booked</title>
</head>
<body>
<h3>Your trip has been booked successfully</h3>
	<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql = "insert into user (fname, lname, cardN, Exdate, Scode) value ('"+fname+"', '"+lname+"','"+cardn+"','"+Exdate+"','"+scode+"');" ;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%><%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
	%>
</body>
</html>