<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<title>Welcome</title>
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>

	<%@ include file ="menu.jsp" %>
	<%! String greeting = "몸에 좋은거 팔아요."; %>
	<%! String tagline = "오늘 아니면 못사요."; %>
	
	<div class = "jumptron">
		<div class = "container">
			<div class = "text-center">
				<h1 class = "display-3">
						<%= greeting  %>
					</h1>
			</div>
		</div>
	</div>
	
	<div class = "container">
		<div class = "text-center">
			<h3><%= tagline %></h3>
			
			<%
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if( hour / 12 == 0){
					am_pm = "AM";
				}else{	
					am_pm = "PM";
					hour = hour -12;
				}
				String CT = hour +":"+minute+":"+second+" "+am_pm;
				out.println("시간 : " +CT + "\n");
	
			%>
		</div>
		<hr>
	</div>
	<%@ include file ="footer.jsp" %>

</body>
</html>
