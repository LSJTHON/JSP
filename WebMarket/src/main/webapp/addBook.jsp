<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<!-- <link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> -->
<link rel = "stylesheet" href = "./resources/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>상품 등록</title>
</head>
<body>
<fmt:setLocale value='<%=request.getParameter("language") %>'/>
<fmt:bundle basename="bundle.message" >
	<jsp:include page = "menu.jsp"/>
	<div class ="jumbotron">
		<div class = "container">
			<h1 class = "display-3">도서 등록</h1>
		</div>
	</div>
	<div class = "container">
	<div class="text-right">
   	  	<a href="?language=ko" >Korean</a>|<a href ="?language=en">English</a>
   	  </div>
		<form name="newbookinfo" action ="./processAddBook.jsp" class="form-horizontal" method="post"
				enctype="multipart/form-data">
			<div class ="form-group row">
				<label class ="col-sm-2"><fmt:message key="bookId" /></label>
				<div class="col-sm-3">
					<input type="text" name = "bookId" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="name" /></label>
				<div class="col-sm-3">
					<input type= "text" name = "name" class = "form-control">
				</div>
			</div>
			
			<div class = "form-group row">
				<label class = "col-sm-2"><fmt:message key="unitPrice" /></label>
				<div class="col-sm-3">
					<input type= "text" name = "unitPrice" class = "form-control">
				</div>
			</div>
			
			<div class = "form-group row">
				<label class = "col-sm-2"><fmt:message key="description" /></label>
				<div class="col-sm-5">
					<textarea  name = "description" cols="50" rows="2" class = "form-control"></textarea>
				</div>
			</div>
			
			<div class = "form-group row">
				<label class = "col-sm-2"><fmt:message key="publisher" /></label>
				<div class="col-sm-3">
					<input type= "text" name = "publisher" class = "form-control">
				</div>
			</div>
			
			<div class = "form-group row">
				<label class = "col-sm-2"><fmt:message key="author" /></label>
				<div class="col-sm-3">
					<input type= "text" name = "author" class = "form-control">
				</div>
			</div>
			
			<div class = "form-group row">
				<label class = "col-sm-2"><fmt:message key="category" /></label>
				<div class="col-sm-3">
					<input type= "text" name = "category" class = "form-control">
				</div>
			</div>
			
			<div class = "form-group row">
				<label class = "col-sm-2"><fmt:message key="unitsInStock" /></label>
				<div class="col-sm-3">
					<input type= "text" name = "unitInStock" class = "form-control">
				</div>
			</div>
			
			<div class = "form-group row">
				<label class = "col-sm-2"><fmt:message key="condition" /></label>
				<div class="col-sm-5">
					<input type= "radio" name = "condition" value="New">
					<fmt:message key="condition_New" />
					<input type= "radio" name = "condition" value="Old">
					<fmt:message key="condition_Old" />
					<input type= "radio" name = "condition" value="EBook">
					<fmt:message key="condition_EBook" />
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="bookImage" /></label>
				<div class="col-sm-5">
					<input type="file" name ="bookImage" class = "form-control">
				</div>
			</div>
			
			<div class = "form-group row">
				<div class="col-sm-3">
					<input type= "submit"class = "btn btn-primary" value = "등록">
				</div>
			</div>
			
		</form>
	</div>
	</fmt:bundle>
</body>
</html>