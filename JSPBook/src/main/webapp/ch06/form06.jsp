<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<body>
	<h3>지옥문 입갤</h3>
	<form action="form06_process.jsp" name ="member" method="post">
	
		<p>아이디 <input type = "text" name = "id"><input type="button" value="아이디 중복 검사">
		<p>비밀번호 : <input type = "password" name ="passwd">
		<p>이름  : <input type = "text" name ="name" placeholder ="니얼굴">
		<p>연락처 : <select name ="phone1">
							<option value = "010">010</option>
							<option value = "011">011</option>
							<option value = "012">012</option>
							</select>
		
		
							<input type = "text" maxlength="4" size ="4" name="phone2">
							<input type = "text" maxlength="4" size ="4" name="phone3">
		<p>성별 : <input type ="radio" name ="sex" value = "남성" checked> 남성
						 <input type ="radio" name ="sex" value = "여성" checked> 여성
		<p> 취미 : 독서 <input type = "checkbox" name ="hobby"  value ="독서" checked>
						 운동 <input type = "checkbox" name ="hobby" value ="운동">
						 영화 <input type = "checkbox" name ="hobby" value ="영화">
		<p><textarea name = "comment" cols="30" rows="3" placeholder="회개문 입력하세요"></textarea>
		<p><input type = "submit" value ="자 드가자">
				<input type ="reset" value = "1코만 더">
	</form>
</body>
</html>