<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<%
	MultipartRequest multi = new MultipartRequest(request, "C:\\upload",
			5*1024*1024,"utf-8",new DefaultFileRenamePolicy());

	Enumeration params = multi.getParameterNames();
	
	
	//일반 데이터 처리
	while(params.hasMoreElements()){
		String name = (String)params.nextElement();
		String value = multi.getParameter(name);
		out.println(name+" = " + value + "<br>");
	}
	out.println("---------------------<br>");
	Enumeration files = multi.getFileNames();
	
	//파일 데이터 처리
	while(files.hasMoreElements()){
		String name = (String) files.nextElement();
		String filename = multi.getFilesystemName(name);
		String original = multi.getOriginalFileName(name);
		String type = multi.getContentType(name);
		File file = multi.getFile(name);
		
		out.println("요청 파라미터 이름 : "+name +"<br>");
		out.println("실제 파일 이름 : " + original + "<br>");
		out.println("저장 파일 이름 : "+ filename + "<br>");
		out.println("파일 콘텐츠 유형 : "+type+"<br>");
		
		if(file != null){		
			out.println(" 파일 크기 : "+file.length());
			out.println("<br>");
		}
	}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>