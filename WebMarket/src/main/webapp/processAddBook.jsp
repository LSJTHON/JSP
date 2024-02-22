<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dto.bookinfo,dao.bookinfoPepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String filename ="";
	String realFolder = "C:\\upload";
	int maxSize = 5*1024*1024;
	String encType = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	String bookId = request.getParameter("bookId");
	String name = request.getParameter("name");
	String unitPrice = request.getParameter("unitPrice");
	String description = request.getParameter("description");
	String publisher = request.getParameter("publisher");
	String category = request.getParameter("category");
	String unitsInStock = request.getParameter("unitInStock");
	String condition = request.getParameter("condition");
	String author = request.getParameter("author");
	
	Integer price;
	if(unitPrice.isEmpty()){
		price =0;
	}else{
		price= Integer.valueOf(unitPrice);
	}
	
	long stock;
	if(unitsInStock.isEmpty()){
		stock=0;
	}else{
		stock= Long.valueOf(unitsInStock);
	}
	
	bookinfoPepository dao = bookinfoPepository.getInstance();
	
	bookinfo newbookinfo = new bookinfo();
	newbookinfo.setBookId(bookId);
	newbookinfo.setName(name);
	newbookinfo.setUnitPrice(price);
	newbookinfo.setDescription(description);
	newbookinfo.setPublisher(publisher);
	newbookinfo.setCategory(category);
	newbookinfo.setUnitsInStock(stock);
	newbookinfo.setCondition(condition);
	newbookinfo.setAuthor(author);
	
	dao.addbookinfo(newbookinfo);
	response.sendRedirect("bookStore.jsp");
	%>
</body>
</html>