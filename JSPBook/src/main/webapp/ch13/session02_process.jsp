<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import ="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String name;
	String value;
	
	Enumeration en = session.getAttributeNames();
	int i =0;
	
	while(en.hasMoreElements()){
		i++;
		name = en.nextElement().toString();
		value = session.getAttribute(name).toString();
		
		out.println("설정된 세션의 속성 이름 "+i+" "+name+" "+"<br>");
		out.println("설정된 세션의 속성 이름 "+i+" "+value+" "+"<br>");
	}
	%>
</body>
</html>