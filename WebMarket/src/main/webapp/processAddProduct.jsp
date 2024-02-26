<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product,dao.ProductRepository" %>
 <%@ page import ="com.oreilly.servlet.*,com.oreilly.servlet.multipart.*, java.util.*" %>
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
	
	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");
	
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
	
	ProductRepository dao = ProductRepository.getInstance();
	
	Product newProduct = new Product();
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufaturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitInStrock(stock);
	newProduct.setCondition(condition);
	newProduct.setFilename(fileName);
	
	dao.addProduct(newProduct);
	response.sendRedirect("products.jsp");
	%>
	
</body>
</html>