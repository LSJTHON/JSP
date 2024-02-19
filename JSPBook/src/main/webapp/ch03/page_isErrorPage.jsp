<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isErrorPage="true"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <h2>isErrorPage 나가라</h2>
   <%
   exception.printStackTrace(new java.io.PrintWriter(out));
   %>
</body>
</html>