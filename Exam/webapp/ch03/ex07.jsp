<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag-include</title>
</head>
<body>
	<%@  include file="include01_header.jsp" %>
	<%@  include file="include02_header.jsp" %>
	<h4>현재 페이지 영역</h4>
	<%@ include file="include02_footer.jsp" %>
</body>
</html>