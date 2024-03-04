<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Connection conn = null;
try{
	String url = "jdbc:mysql://192.168.111.200:3306/JSPBookDB";
	String user = "root";
	String password = "1234";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url,user,password);
	out.println("데이터베이스 연결이 성공했습니다. 킹갓엠페럴충무공이순신레전드");
}catch(SQLException ex){
	out.println("데이터베이스 연결이 실패했습니다<br>");
	out.println("SQLException : "+ex.getMessage());
}finally{
	if(conn != null) conn.close();
}
%>
</body>
</html>