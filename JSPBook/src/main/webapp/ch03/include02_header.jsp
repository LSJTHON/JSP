<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%! int pageCount = 0;
		void addCount(){
			pageCount++;
		}
	%>
	
	<%
	addCount();
	%>
	<p>
	나가라고 말했다. <%=pageCount %>번째다.
	</p>
</body>
</html>