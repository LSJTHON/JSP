<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h4>----세션 삭제 전----</h4>
	<%
	String user_id = (String) session.getAttribute("userID");
	String user_pw = (String) session.getAttribute("userPW");
	out.println("설정된 세션 이름 userID : " + user_id + "<br>");
	out.println("설정된 세션 이름 userPW : " + user_pw + "<br>");

	session.removeAttribute("userID");
	%>
	<h4>----세션 삭제----</h4>

	<%
	user_id = (String) session.getAttribute("userID");
	user_pw = (String) session.getAttribute("userPW");
	out.println("설정된 세션 이름 : userID : " + user_id + "<br>");
	out.println("설정된 세션 이름 : userPW : " + user_pw + "<br>");
	%>
</body>
</html>