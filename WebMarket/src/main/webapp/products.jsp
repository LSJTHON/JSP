<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%--   <jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<%
	/* ArrayList<Product> listOfProducts1 = productDAO.getAllProducts(); */

	ProductRepository dao = ProductRepository.getInstance();
	ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
			for (int i = 0; i < listOfProducts.size(); i++) {
				Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
				<%-- <img src ="./resources/images/<%=product.getFilename() %>" style="width:100%"> --%>

				<img src="/upload/<%=product.getFilename()%>" style="width: 100%">
				<h2><%=product.getPname()%></h2>
				<h3><%=product.getDescription()%></h3>
				<h3><%=product.getUnitPrice()%>원
				</h3>
				<p>
					<a href="./product.jsp?id=<%=product.getProductId()%>"
						class="btn btn-secondary" role="button">상세 정보 &raquo;</a>
			</div>
			<%
			}
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>