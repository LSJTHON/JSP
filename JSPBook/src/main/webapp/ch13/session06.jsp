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
	<h4>----세션 삭제 전----</h4>
	<%
	String user_id = (String)session.getAttribute("userID");
	String user_pw = (String)session.getAttribute("userPW");
	
	out.println("설정된 세션 이름 userID : "+user_id+"<br>");
	out.println("설정된 세션 이름 userPW : "+user_pw+"<br>");
	
	if(request.isRequestedSessionIdValid() == true){
		out.print("세션이 유효합니다.");
	}else{
		out.print("세션이 유효하지 않습니다.");
	}
	session.invalidate();
	%>
	<h4>----세션 삭제----</h4>
	<%
	if(request.isRequestedSessionIdValid() == true){
		out.print("세션이 유효합니다.");
	}else{
		out.print("세션이 유효하지 않습니다.");
	}
	%>
</body>
</html>