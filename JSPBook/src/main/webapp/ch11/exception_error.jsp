<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page isErrorPage="true" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
	<p>누구인가 : <%=exception %>
	<p> toString() : <%=exception.toString() %>
	<p> getClass.getName() : <%=exception.getClass().getName() %> 
	<p> getMessage() : <%=exception.getMessage() %>
</body>
</html>