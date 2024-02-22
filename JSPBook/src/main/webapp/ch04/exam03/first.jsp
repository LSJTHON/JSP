<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>이 파일은 first.jsp 입니다.</h3>
	<!--  데이터값 date 를 second 에 있는걸 가져와서 띄우기-->
	<jsp:include page = "second.jsp">
		<jsp:param name ="date" value ="<%= new java.util.Date() %>" />
		
	</jsp:include>
	<p>Java Server Page<p>
</body>
</html>