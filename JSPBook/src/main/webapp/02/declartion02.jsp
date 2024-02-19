<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%!
		int sum(int a, int b){
		return a+b;
	}
	%>
	
	<%
		out.println("합띠 : " + sum(2,3));
		System.out.println("합띠 : " + sum(2,3));
	%>
</body>
</html>