<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>error
	<p>궁예 : 누구인가? <%=exception.getClass().getName() %>
	<p>궁예 : 누가 기침소리를 내었는가? <%=exception.getMessage() %>
</body>
</html>