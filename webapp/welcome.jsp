<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="EUC-KR">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"	integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO"	crossorigin="anonymous"></script>
<title>Welcome</title>
</head>
<body>
	<div class = "container py-4">
	<%@ include file="menu.jsp" %>
	
	<%! String greeting="도서 쇼핑몰에 오신 것을 환영합니다";
		String tagline = "Welcome to Web Market";%>

	<div class = "p-5 mb-4 bg-body-tertiary rounded-3">
	<div class = "container-fluid py-5">
	<h1 class = "display-5 fw-bold"><%= greeting %></h1>
	<p class = "col-md-8 fs-4">BookMarket</p>
	</div>
	</div>
	
	<div class = "row align-items-md-stretch 	text-center">
	<div class="col-md-12">
	<div class = "h-100 p-5">
	<h3><%= tagline %></h3>
	 <%
		response.setIntHeader("Refresh",5);	 
	 	Date day = new java.util.Date();
	 	String am_pm;
	 	int hour = day.getHours();
	 	int minute = day.getMinutes();
	 	int second = day.getSeconds();
	 	if(hour / 12==0){
	 		am_pm="AM";
	 	}else{
	 		am_pm="PM";
	 		hour -= 12;
	 	}
		String CT = hour + ":" + minute + ":" + second + " " + am_pm;
	 	out.println("현재 접속 시각: "+CT+"\n");
	 %>
	</div>
	</div>
	</div>
	<%@ include file="footer.jsp" %>
	
</div>
</body>
</html>

