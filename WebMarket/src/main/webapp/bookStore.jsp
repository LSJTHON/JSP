<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<%--   <jsp:useBean id="bookinfoDAO" class="dao.bookinfoPepository" scope="session"/> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">BOOK</h1>
		</div>
	</div>
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
			</div>
			<div class="col-md-2 mt-5">
				<a href="./bookStores.jsp?id=<%=rs.getString("b_id")%>"
					class="btn btn-secondary" role="button">상세 정보 &raquo;</a>
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
	<jsp:include page="footer.jsp" />
</body>
</html>