<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id ="person" class = "ch04.com.dao.Person" scope ="request"/>
	<h2>아이디 : <jsp:getProperty name ="person" property="id"/></h2>
	<h2>이름 : <jsp:getProperty name ="person" property="name"/></h2>
</body>
</html>