<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "dto.bookinfo" %>
<%@ page import = "dao.bookinfoPepository" %>  

<%
String id = request.getParameter("cartId");
if(id == null || id.trim().equals("")){
	response.sendRedirect("cart.jsp");
	return;
}
session.invalidate();
response.sendRedirect("cart.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>