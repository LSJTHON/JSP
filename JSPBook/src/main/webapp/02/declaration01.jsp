<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scripting Tag</title>
</head>
<body>
	
	<%! int data =50; %>  <!-- 전역 변수 data -->
	<%
		out.println(" 변수 데이터 data는 " + data);
	%>
</body>
</html>