<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scripting Tag</title>
</head>
<body>
	
	<%! int data =50; %>  <!-- ���� ���� data -->
	<%
		out.println(" ���� ������ data�� " + data);
	%>
</body>
</html>