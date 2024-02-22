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
	<h2>아이디 : <% out.println(person.getId()); %></h2>
	<h2>이름 : <% out.println(person.getName()); %></h2>
	<jsp:setProperty name ="person" property="id" value ="20182005" />
	<jsp:setProperty name ="person" property="name" value ="니얼굴"/>'
	<h2>아이디 : <% out.println(person.getId()); %></h2>
	<h2>이름 : <% out.println(person.getName()); %></h2>
</body>
</html>