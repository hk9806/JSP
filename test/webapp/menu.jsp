<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String sessionId=(String) session.getAttribute("sessionId");
%>
<header class="pb-3 mb-4 border-bottom">
	<a href="http://192.168.111.101:8080/TEST/welcome.jsp"
		class="d-flex align-items-center text-dark text-decoration-none">
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
			fill="currentColor" class="bi bi-shop" viewBox="0 0 16 16">
  <path	d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.37 2.37 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0M1.5 8.5A.5.5 0 0 1 2 9v6h1v-5a1 1 0 0 1 1-1h3a1 1 0 0 1 1 1v5h6V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5M4 15h3v-5H4zm5-5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1zm3 0h-2v3h2z" />
</svg> <span class="fs-4">Home</span></a>
	<ul class="nav nav-pills">
	 <c:choose>
	  <c:when test="${empty sessionId}">
	  <li class="nav-item">
	  <a class="nav-link" href="<c:url value="/member/loginMember.jsp"/>" >로그인</a>
	  </li>
	  <li class="nav-item">
	  <a class="nav-link" href='<c:url value="/member/addMember.jsp"/>' >회원가입</a>
	  </li>
	  </c:when>
	  <c:otherwise>
	  <li style="padding-top:7px; color:white">[<%=sessionId %>님]
	  </li>
	  <li class="nav-item">
	  <a class="nav-link" href="<c:url value="/member/logoutMember.jsp"/>">로그아웃</a>
	  </li>
	   <li class="nav-item">
	  <a class="nav-link" href="<c:url value="/member/updateMember.jsp"/>">회원수정</a>
	  </li>
	  </c:otherwise>
	  </c:choose>
	  </ul>
	  
</header>