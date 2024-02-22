<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	//name 파라미터의 값을 변수 name에 저장
	String name = request.getParameter("name");
	%>
	<p> 이름 : <%=name %><br>
			클라이언트 IP: <%=request.getRemoteAddr() %><br>
			요청 정보 길이 : <%=request.getContentLength() %><br>
			요처 정보 인코딩 : <%=request.getCharacterEncoding() %><br>
			요청 정보 콘텐츠 유형 : <%=request.getContentType() %>
			
			요청 정보 프로토콜 : <%=request.getProtocol() %>
			요청 정보 전송 방식 : <%=request.getMethod() %><br>
			요청 URI : <%=request.getRequestURI() %><br>
			콘텍스트 경로 : <%=request.getContextPath() %>
			서버 이름 : <%=request.getServerName() %><br>
			서버 포트 : <%=request.getServerPort() %><br>
			쿼리문 : <%=request.getQueryString() %>
	
	</p>
</body>
</html>