<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>

<%
String filename = "";
String realFolder = "c:/upload/";
//String realFolder = "resources\\images";
int maxSize = 5 * 1024 * 1024;
String encType = "utf-8";

MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

String bookId = multi.getParameter("bookId");
String name = multi.getParameter("name");
String unitPrice = multi.getParameter("unitPrice");
String description = multi.getParameter("description");
String publisher = multi.getParameter("publisher");
String category = multi.getParameter("category");
String unitsInStock = multi.getParameter("UnitsInStock");
String condition = multi.getParameter("condition");
String author = multi.getParameter("author");

Integer price;
if (unitPrice.isEmpty()) {
	price = 0;
} else {
	price = Integer.valueOf(unitPrice);
}

long stock;
if (unitsInStock.isEmpty()) {
	stock = 0;
} else {
	stock = Long.valueOf(unitsInStock);
}

Enumeration files = multi.getFileNames();
String fname = (String) files.nextElement();
String fileName = multi.getFilesystemName(fname);

PreparedStatement pstmt = null;
ResultSet rs = null;

String sql = "select * from book where b_id=?";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, bookId);
rs = pstmt.executeQuery();

if (rs.next()) {
	if (fileName != null) {
		sql = "UPDATE book SET b_name=?, b_unitPrice=?,b_description=?,b_publisher=?,b_category=?,b_unitsInStock=?,b_condition=?,b_author=?,b_filename=? where b_id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setInt(2, price);
		pstmt.setString(3, description);
		pstmt.setString(4, publisher);
		pstmt.setString(5, category);
		pstmt.setLong(6, stock);
		pstmt.setString(7, condition);
		pstmt.setString(8, author);
		pstmt.setString(9, fileName);
		pstmt.setString(10, bookId);
		pstmt.executeUpdate();
	} else {
		sql = "UPDATE book SET b_name=?, b_unitPrice=?,b_description=?,b_publisher=?,b_category=?,b_unitsInStock=?,b_condition=?,b_author=? where b_id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setInt(2, price);
		pstmt.setString(3, description);
		pstmt.setString(4, publisher);
		pstmt.setString(5, category);
		pstmt.setLong(6, stock);
		pstmt.setString(7, condition);
		pstmt.setString(8, author);
		pstmt.setString(9, bookId);
		pstmt.executeUpdate();
	}
}

if (rs != null)
	rs.close();
if (pstmt != null)
	pstmt.close();
if (conn != null)
	conn.close();

response.sendRedirect("bookStore.jsp");
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