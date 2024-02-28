<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
String passwd = request.getParameter("passwd");
%>
<p>로그인 성공 했습니다.
<p>입력된 id 값 : <%=id %>
<p>입력된 ps 값 : <%=passwd %>
</body>
</html>