<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>지옥문 입갤</h3>
	<form action="#" name = "member" method ="post">
	
		<p>아이디 &nbsp; &nbsp; <input type = "text" name = "id"><input type="button" value="아이디 중복 검사">
		<p>비밀번호 : <input type = "password" name ="passwd">
		<p>이름  : &nbsp; &nbsp; &nbsp;<input type = "text" name ="name" placeholder ="니얼굴">
		<p>연락처 :  &nbsp; &nbsp;<input type = "text" maxlength="4" size ="4" name="phone1">
		<input type = "text" maxlength="4" size ="4" name="phone2">
		<input type = "text" maxlength="4" size ="4" name="phone3">
		<p>성별 : <input type ="radio" name ="sex" value = "남성" checked> 남성
						 <input type ="radio" name ="sex" value = "여성" checked> 여성
		<p> 취미 : 독서 <input type = "checkbox" name ="hobby1" checked>
						 운동 <input type = "checkbox" name ="hobby2">
						 영화 <input type = "checkbox" name ="hobby3" >
		<p><input type = "submit" value ="가입하기">
				<input type ="reset" value = "다시 쓰기">
	</form>
</body>
</html>