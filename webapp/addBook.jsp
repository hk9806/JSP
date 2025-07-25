<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"	integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO"	crossorigin="anonymous"></script>
<title>도서등록 페이지</title>
</head>
<body>
	<div class = "container py-4">
	<%@ include file="menu.jsp" %>

	<div class = "p-5 mb-4 bg-body-tertiary rounded-3">
	<div class = "container-fluid py-1">
	<h1 class = "display-5 fw-bold">도서등록</h1>
	<p class = "col-md-8 fs-4">Book Addition</p>
	</div>
	</div>
	
	<div class = "row align-items-md-stretch">
	 <form name="newBook" action="./processAddBook.jsp" method="post">
	  <div class="mb-3 row">
	   <label class="col-sm-2">도서코드</label>
	   <div class="col-sm-3">
	    <input type="text" name="bookid" class="form-control">
	   </div>
	  </div>
	 <div class="mb-3 row">
	 <label class="col-sm-2">도서명</label>
	  <div class="col-sm-3">
	   <input type="text" name="name" class="form-control">
	  </div>
	 </div>
	 <div class="mb-3 row">
	 <label class="col-sm-2">가격</label>
	 <div class="col-sm-3">
	 	<input type="text" name="unitPrice" class="form-control">
	 </div>
	 </div>
	 <div class="mb-3 row">
	  <label class="col-sm-2">출판사</label>
	  <div class="col-sm-3">
	  	<input type="text" name="publisher" class="form-control">
	  </div>
	 </div>
	 <div class="mb-3 row">
	  <label class="col-sm-2">출판일</label>
	  <div class="col-sm-3">
	  	<input type="text" name="releaseDate" class="form-control">
	  </div>
	 </div>
	 <div class="mb-3 row">
	 <label class="col-sm-2">상세정보</label>
	 <div class="col-sm-5">
	 	<textarea name="description" cols="50" rows="2"
	 		class="form-control" placeholder="100자 이상 적어주세요"></textarea>
	 </div>
	 </div>
	 <div class="mb-3 row">
	 	<label class="col-sm-2">분류</label>
	 	<div class="col-sm-3">
	 		<input type="text" name="category" class="form-control">
	 </div>
	 </div>
	 <div class="mb-3 row">
	  <label class="col-sm-2">재고수</label>
	  <div class="col-sm-3">
	  	<input type="text" name="unitsInStock" class="form-control">
	  </div>
	 </div>
	 <div class="mb-3 row">
	  <label class="col-sm-2">상태</label>
	  <div class="col-sm-5">
	   	<input type="radio" name="condition" value="New">신규도서
	  	<input type="radio" name="condition" value="Old">중고도서
	  	<input type="radio" name="condition" value="EBook">E-Book
	  </div>
	 </div>
	 <div class="mb-3 row">
	  <div class="col-sm-offset-2 col-sm-10">
	  	<input type="submit" class="btn btn-primary" value="등록">
	  </div>
	 </div>
	 </form>
	</div>
	<%@ include file="footer.jsp" %>
	
</div>
</body>
</html>

