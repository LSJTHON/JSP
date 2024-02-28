<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.bookinfo" %>
<%@ page import="dao.bookinfoPepository" %>

<%--   <jsp:useBean id="bookinfoDAO" class="dao.bookinfoPepository" scope="session"/> --%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> -->
<link rel = "stylesheet" href = "./resources/css/bootstrap.min.css" />
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
	<div class ="jumbotron">
		<div class="container">
			<h1 class="display-3">BOOK</h1>
		</div>
	</div>
	<%
		/* ArrayList<bookinfo> bookinfo1 = bookinfoDAO.getAllBooks(); */
		
		bookinfoPepository dao = bookinfoPepository.getInstance();
		ArrayList<bookinfo> bookinfo1 = dao.getAllBooks();
	%>
	<div class = "container">
		<div class="row" >
		<%
				for(int i = 0; i < bookinfo1.size(); i++){
					bookinfo bookinfo = bookinfo1.get(i);
		%>
			
				<img style ="width =30%" src ="/upload/<%=bookinfo.getFilename() %>" style="width:100%" class ="col-md-4">
			<%-- <img src ="./resources/images/<%=bookinfo.getFilename() %>" style="width:100%"> --%>
			
			<div class="col-md-6">
			
				<h3><%=bookinfo.getName() %></h3>
				<p style="padding-top:20px"><%=bookinfo.getDescription() %>...</p>
				<p><%=bookinfo.getAuthor() %> | <%=bookinfo.getPublisher() %> | <%=bookinfo.getUnitPrice()  %>원 </p>
				<p> 
			</div>
				
				<div class="col-md-2 mt-5"'>
				<a href = "./bookStores.jsp?id=<%=bookinfo.getBookId()%>"				
						class = "btn btn-secondary" role ="button">상세 정보 &raquo;</a>
				
				</div>
				<hr>
		<%
				}
		%>
		</div>
	</div>
	<jsp:include page = "footer.jsp"/>
</body>
</html>