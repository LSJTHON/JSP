<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.bookinfo" %>
<%@ page import = "dao.bookinfoPepository" %>   
 
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href = "./resources/css/bootstrap.min.css" />
<%
String cartId = session.getId();
%>
<meta charset="EUC-KR">
<title>��ٱ���</title>
</head>
<body>
	<jsp:include page = "menu.jsp" />
	<div class ="jumbotron">
		<div class = "container">
			<h1 class="display-3">��ٱ���</h1>
		</div>
	</div>
	<div class = "container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left">
						<a href="./deleteCart.jsp?cartId=<%=cartId%>" class="btn btn-danger">�����ϱ�</a>
					</td>
					<td align="right">
						<a href="./shippingInfo.jsp?cartId=<%=cartId%>" class="btn btn-success">�ֹ��ϱ�</a>
					</td>
				</tr>
			</table>
		</div>	
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>��ǰ</th>
					<th>����</th>
					<th>����</th>
					<th>�Ұ�</th>
					<th>���</th>
				</tr>
				<%
				int sum = 0;
				ArrayList<bookinfo> cartList = (ArrayList<bookinfo>) session.getAttribute("cartlist");
				if(cartList == null){
					cartList = new ArrayList<bookinfo>();
				}
				for(int i =0;i<cartList.size();i++){
					bookinfo bookinfo = cartList.get(i);
					int total = bookinfo.getUnitPrice()*bookinfo.getQuantity();
					sum = sum+total;
				%>
				<tr>
					<td><%=bookinfo.getBookId() %>-<%=bookinfo.getName()%></td>
					<td><%=bookinfo.getUnitPrice()%></td>
					<td><%=bookinfo.getQuantity() %></td>
					<td><%=total %></td>
					<td><a href="./removeCart.jsp?id=<%=bookinfo.getBookId()%>" class="badge badge-danger">����</a></td>
				</tr>
				<%
				}
				%>
				<tr>
					<th></th>
					<th></th>
					<th>�Ѿ�</th>
					<th><%=sum %></th>
					<th></th>
				</tr>
			</table>
			<a href="./bookStore.jsp" class="btn btn-secondary">&laquo; ���� ����ϱ�</a>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>