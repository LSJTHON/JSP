<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="java.util.Locale" %>
<!DOCTYPE html>

<%
response.setContentType("text.html");
response.setHeader("Content_Language", "es");
String title = "Espa&ntilde;ol";
%>

<html>
<head>
<meta charset="UTF-8">
<title><%out.print(title); %></title>
</head>
<body>
<p>Idioma : Espa&ntilde;ol</p>
<p>&iexcl;Hola Mundo!</p>
</body>
</html>