<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import ="java.util.ArrayList" %>
<%@page import ="dto.bookinfo" %>
<%@page import ="dao.bookinfoPepository" %>

<%
String id = request.getParameter("id");
if(id == null || id.trim().equals("")){
	response.sendRedirect("bookStores.jsp");
	return;
}
bookinfoPepository dao = bookinfoPepository.getInstance();

bookinfo bookinfo = dao.getBookById(id);
if(bookinfo == null){
	response.sendRedirect("exceptionNoProductId.jsp");
}
ArrayList<bookinfo> goodsList = dao.getAllBooks();
bookinfo goods= new bookinfo();
for(int i=0;i<goodsList.size();i++){
	goods=goodsList.get(i);
	if(goods.getBookId().equals(id)){
		break;
	}
}
ArrayList<bookinfo> list = (ArrayList<bookinfo>) session.getAttribute("cartlist");
if(list == null){
	list = new ArrayList<bookinfo>();
	session.setAttribute("cartlist",list);
}
int cnt = 0;
bookinfo goodsQnt = new bookinfo();

for(int i =0; i<list.size();i++){
	goodsQnt = list.get(i);
	if(goodsQnt.getBookId().equals(id)){
		cnt++;
		int orderQuantity = goodsQnt.getQuantity()+1;
		goodsQnt.setQuantity(orderQuantity);
	}
}
if(cnt == 0){
	goods.setQuantity(1);
	list.add(goods);
}
response.sendRedirect("bookStores.jsp?id=" +id);
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