<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type ="text/javascript">
	function checkForm(){
		var regExp = /Java/i;
		var str = document.frm.title.value;
		var result = regExp.exec(str);
		alert(result[0]);
		
	}
</script>
<body>
	<form name ="frm">
		<p> 제목 : <input type = "text" name = "title">
		<input type = "submit" value = "전송" onclick = "checkForm()">
	</form>
</body>
</html>