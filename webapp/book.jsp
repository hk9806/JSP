<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session" />
<%@page import="dto.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<title>도서 정보</title>
</head>
<body>
	<div class = "container py-4">
	<%@ include file="menu.jsp" %>
	
	<div class = "p-5 mb-4 bg-body-tertiary rounded-3">
	<div class = "container-fluid py-5">
	<h1 class = "display-5 fw-bold">도서정보</h1>
	<p class = "col-md-8 fs-4">BookInfo</p>
	</div>
	</div>
	
	<%
		String id=request.getParameter("id");
		Book book = bookDAO.getBookById(id);
	%>
	<div class = "row align-items-md-stretch">
	<div class="col-md-12">
	<h3><b><%=book.getName() %></b></h3>
	<p><%=book.getDescription() %>
	<p><b>도서코드: </b><span class="badge text-bg-danger">
	<%=book.getBookId() %></span>
	<p><b>저자</b>: <%=book.getAuthor() %>
	<p><b>출판사</b>: <%=book.getPublisher() %>
	<p><b>출판일</b>: <%=book.getReleaseDate() %>
	<p><b>분류</b>: <%=book.getCategory() %>
	<p><b>재고수</b>: <%=book.getUnitsInStock() %>
	<h4><%=book.getUnitPrice() %>원</h4>
	<p><a href="./books.jsp" class="btn btn-secondary">도서목록 &raquo;</a>
	</div>
	</div>
	
	<%@ include file="footer.jsp" %>
	
</div>
</body>
</html>

