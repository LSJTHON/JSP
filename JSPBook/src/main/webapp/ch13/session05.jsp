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
<h4>----技记 昏力 傈----</h4>
	<%
	String name;
	String value;
	
	Enumeration en = session.getAttributeNames();
	int i = 0;
	
	while(en.hasMoreElements()){
		i++;
		name = en.nextElement().toString();
		value = session.getAttribute(name).toString();
		out.println("汲沥等 技记 捞抚 ["+i+"] : "+name+"<br>");
		out.println("汲沥等 技记 蔼 ["+i+"] : "+value+"<br>");
	}
	session.removeAttribute("userID");
	%>
	<h4>----技记 昏力----</h4>
	<%
	en = session.getAttributeNames();
	i=0;
	while(en.hasMoreElements()){
		i++;
		name = en.nextElement().toString();
		value = session.getAttribute(name).toString();
		out.println("汲沥等 技记 捞抚 ["+i+"] : "+name+"<br>");
		out.println("汲沥等 技记 蔼 ["+i+"] : "+value+"<br>");
	}
	%>
</body>
</html>