<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="exception_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception</title>
</head>
<body>
	<form action="exception_process.jsp" method="post">
		<p>숫자1: <input type="text" name="num1">
		<p>숫자2:<input type="text" name="num2">
		<p><input type="submit" value="나누기">
	</form>
</body>
</html>