<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>없는거 빼고 다 없는 마트</title>
</head>
<body>
	<h2>진짜 아무것도 없는 마트</h2>
	
	<%! int count  = 3; 
		String makeItLower(String data){
			return data.toLowerCase();	
		}
	%>
	
	<%
		for(int i =0; i <= count; i++){
			out.println("아무것도 없다고 : " + i + ".<br>");
		}
	%>
	
	<%=makeItLower("나가") %>
</body>
</html>