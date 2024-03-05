<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>상품 편집</title>
<script type = "text/javascript">
	function deleteConfirm(id){
		if(confirm("해당 상품을 삭제합니다!!")== true)
			location.href = "./deleteBook.jsp?id=" + id;
		else
			return;
	}
</script>
<%
String edit = request.getParameter("edit");
%>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 편집</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp"%>
			<%
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			String sql = "select * from book";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
			%>
			<div class="container">
				<div class="row">
					<img style="" src="/upload/<%=rs.getString("b_filename")%>"
						style="width:100%" class="col-md-4">
					<div class="col-md-6">
						<h3><%=rs.getString("b_name")%></h3>
						<p style="padding-top: 20px"><%=rs.getString("b_description")%>...
						</p>
						<p><%=rs.getString("b_author")%>|<%=rs.getString("b_publisher")%>|<%=rs.getString("b_unitPrice")%>원
						</p>
						<p>
							<%
							if (edit.equals("update")) {
							%>
							<a href="./updateBook.jsp?id=<%=rs.getString("b_id")%>"
								class="btn btn-secondary" role="button">수정 &raquo;</a>
							<%
							}else if (edit.equals("delete")){
							%>
							<a href="#" onclick="deleteConfirm('<%=rs.getString("b_id") %>')" class="btn btn-danger" role="button">
							삭제 &raquo;
							</a>
							<%
							}
							%>
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
			</div>
		</div>
	</div>
</body>
</html>