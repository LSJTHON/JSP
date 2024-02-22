<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id = "person" class ="ch04.com.dao.Person"/>
	<p>아이디 : <%= person.getId() %>
	<p> 이름 : <%= person.getName() %>
	
	<%
	person.setId(2321321);
	person.setName("몰라예");
	
	%>
	<h2>느그 아부지 므하시노? 으이? <% %></h2>
	<h2><%=person.getId() %></h2>
	<h2><%=person.getName() %></h2>
</body>
</html>