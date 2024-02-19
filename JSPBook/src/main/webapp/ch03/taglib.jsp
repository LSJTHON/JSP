<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
	<c:forEach var="k" begin="1" end="10" step="1">
		<c:out value="${k}"  />
	</c:forEach>
</body>
</html>