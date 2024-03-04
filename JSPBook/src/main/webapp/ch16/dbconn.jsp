<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Connection conn = null;
	String url = "jdbc:mysql://192.168.111.200:3306/JSPBookDB";
	String user = "root";
	String password = "1234";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url,user,password);
	%>
</body>
</html>