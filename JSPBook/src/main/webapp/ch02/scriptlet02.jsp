<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>
		today : <%=new java.util.Date()%>	
	</h2>
	
	<%
	int a = 10, b = 20, c = 30;
	for (int i = 0; i <= 10; i++) {
		if (i % 2 == 0)
			out.println("<h2><i>" + i + "&nbsp이탤릭띠<br></i></h2>");
	}
	
	%>
	<h2><%= a+b+c %></h2>
</body>
</html>