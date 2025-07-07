<%@page import="mvc.model.memberDAO"%>
<%@page import="mvc.model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");
String password = request.getParameter("password");

memberDTO member = new memberDTO();
member.setId(id);
member.setPassword(password);

memberDAO dao = memberDAO.getInstance();
String loginId = dao.loginmember(member); // 로그인 성공 시 id 반환

if (loginId != null) {
	session.setAttribute("sessionId", loginId); // 로그인 성공 시 세션 설정
	response.sendRedirect("resultMember.jsp?msg=2");
} else {
	response.sendRedirect("loginMember.jsp?error=1"); // 로그인 실패
}
%>
