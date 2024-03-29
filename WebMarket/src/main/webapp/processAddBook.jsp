<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.bookinfo,dao.bookinfoPepository" %>
<%@ page import ="com.oreilly.servlet.*,com.oreilly.servlet.multipart.*, java.util.*" %>
<%@ page import ="java.sql.*" %>
<%@ include file = "dbconn.jsp" %>
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
	String realFolder = "c:/upload/";
	//String realFolder = "resources\\images";
	int maxSize = 5*1024*1024;
	String encType = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, 
			maxSize, encType, new DefaultFileRenamePolicy());
	
	String bookId = multi.getParameter("bookId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String publisher = multi.getParameter("publisher");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitInStock");
	String condition = multi.getParameter("condition");
	String author = multi.getParameter("author");
	
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
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	PreparedStatement pstmt = null;
	
	String sql = "insert into book(b_id,b_name,b_unitPrice,b_description,b_publisher,b_category,b_unitsInStock,b_condition,b_author,b_filename) values(?,?,?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,bookId);
	pstmt.setString(2,name);
	pstmt.setInt(3,price);
	pstmt.setString(4,description);
	pstmt.setString(5,publisher);
	pstmt.setString(6,category);
	pstmt.setLong(7,stock);
	pstmt.setString(8,condition);
	pstmt.setString(9,author);
	pstmt.setString(10,fileName);
	pstmt.executeUpdate();
	
	if(pstmt != null) pstmt.close();
	if(conn != null) conn.close();
	
	/* bookinfoPepository dao = bookinfoPepository.getInstance();
	
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
	newbookinfo.setFilename(fileName);
	
	dao.addbookinfo(newbookinfo); */
	response.sendRedirect("bookStore.jsp");
	%>
</body>
</html>