<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.bookinfo" %>
<%@ page import = "dao.bookinfoPepository" %>  

<%
String id = request.getParameter("id");
if(id == null || id.trim().equals("")){
	response.sendRedirect("bookStore.jsp");
	return;
}

bookinfoPepository dao = bookinfoPepository.getInstance();

bookinfo bookinfo = dao.getBookById(id);
if(bookinfo == null){
	response.sendRedirect("exceptionNoProductId.jsp");
}
ArrayList<bookinfo> cartList = (ArrayList<bookinfo>) session.getAttribute("cartlist");
bookinfo goodsQnt = new bookinfo();
for(int i =0;i<cartList.size();i++){
	goodsQnt = cartList.get(i);
	if(goodsQnt.getBookId().equals(id)){
		cartList.remove(goodsQnt);
	}
}
response.sendRedirect("cart.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>