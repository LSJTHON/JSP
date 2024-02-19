<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setAttribute("RequestAttribute","request 저장 객체");
	%>
	${requestScope.RequestAttribute}
</body>
</html>