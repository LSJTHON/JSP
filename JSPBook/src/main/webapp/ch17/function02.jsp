<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="texts"
		value="${fn:split('Hello, Java Server Pages!',' ') }" />
	<c:forEach var="i" begin="0" end="${fn:length(texts)}">
		<p>text[${i}] = ${texts[i]}
	</c:forEach>
	<p>
		<c:out value="${fn:join(texts,'-')}" />
</body>
</html>