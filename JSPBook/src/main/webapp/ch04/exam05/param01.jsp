<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>승기야  몇시고?</h3>
	<jsp:include page = "param01_data.jsp">
	
		<jsp:param name ="title" value = '<%=java.net.URLEncoder.encode("모릅니더")%>' />
		
		<jsp:param name ="date" value ="<%=java.util.Calendar.getInstance().getTime()%>"/>
		
	</jsp:include>
	<p>모르면 알아와야지?</p>
</body>
</html>