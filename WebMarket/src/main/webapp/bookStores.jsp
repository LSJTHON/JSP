<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.util.Date" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.bookinfo" %>
<%@ page import="dao.bookinfoPepository" %>
  <%-- <jsp:useBean id="bookinfoDAO" class="dao.bookinfoPepository" scope="session"/> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 목록</title>

	<script type = "text/javascript">
		function addToCart(){
			if(confirm("상품을 장바구니에 추가하시겠습니까?")){
				document.addForm.submit();
			}else{
				document.addForm.reset();
			}
		}
	</script>

</head>
<body>

	<jsp:include page="menu.jsp"/>
	<div class ="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<%@ include file="dbconn.jsp"%>
	<%
	
	
	String id = request.getParameter("id");
	
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "select * from book where b_id=?";
	pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, id);
	
	rs = pstmt.executeQuery();
	
	/* String id = request.getParameter("id");
	
	bookinfoPepository dao = bookinfoPepository.getInstance();
	bookinfo bookinfo = dao.getBookById(id); */
	if(rs.next()){
	%>
	<div class = "container">
		<div class="row" align ="left">
		<%-- <img src ="./resources/images/<%=bookinfo.getFilename() %>" style="width:100%"> --%>
		<img src ="/upload/<%=rs.getString("b_filename")%>" style="width:100%">
			<h3><%=rs.getString("b_name")%></h3>
			<p><%=rs.getString("b_description") %></p>
			<div class="col-md-12">
					<p><b>책 고유 코드 : </b><span class="badge badge-danger">
						<%=rs.getString("b_id") %></span></p>
					<p><b>분류</b> : <%=rs.getString("b_category") %><p>
					<h4>가격 : <%=rs.getString("b_unitsinstock")%>원</h4>
					<p><form name ="addForm" action="./addCart.jsp?id=<%=rs.getString("b_id")%>" method="post">
					   <a href="#" class="btn btn-info" onclick="addToCart()">상품 주문 &raquo;</a>
					   <a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
					   <a href="./bookStore.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>  
					</form>
			</div>
			<%
			}
				if (rs != null)
				rs.close();
				if (pstmt != null)
				pstmt.close();
				if (conn != null)
				conn.close();
			%>


		</div>
		<hr>
	</div>
	<jsp:include page = "footer.jsp"/>
</body>
</html>