<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Locale"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<%
Locale locale = request.getLocale();
String displayLanguage = locale.getDisplayLanguage();
String displayCountry = locale.getDisplayCountry();
String country = locale.getCountry();
String language = locale.getLanguage();
%>


<body>
	<%
	out.println("로케일 언어 : " + displayLanguage + "<br>");
	out.println("로케일 언어 코드 : " + language + "<br>");
	out.println("로케일 국가 : " + displayCountry + "<br>");
	out.println("로케일 국가 코드 : " + country + "<br>");
	%>
</body>
</html>