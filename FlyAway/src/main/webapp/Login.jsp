<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
   String name= request.getParameter("name");
   String pwd = request.getParameter("pwd");
   String N = "Abdu";
   String P = "123";
   
  /* 
   if (name == null || name.equals("") || pwd == null || pwd.equals("")) {
       response.sendRedirect("index.jsp?error=1");
} else {
       
       session.setAttribute("name", name);
       response.sendRedirect("dashboard.jsp");
       
}*/

   
   
   if(name.equals(N) && pwd.equals(P)){
	   session.setAttribute("name", name);
	   response.sendRedirect("dashboard.jsp");
   }else{
	   response.sendRedirect("AdminLogin.jsp?error=1");
   }
   
  // if(name == N || name.equals(N) && pwd == P || pwd.equals(P)){
	   
%>