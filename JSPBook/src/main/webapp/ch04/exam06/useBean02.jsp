<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="bean" class="ch04.com.dao.Calculator"/>
	<%
		long m = bean.process(165565); 
		out.println("16556의 세 제곱 : "+m);
	%>
</body>
</html>