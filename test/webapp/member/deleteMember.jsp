<%@page import="mvc.model.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%

    String sessionId = (String) session.getAttribute("sessionId");
    memberDAO dao = memberDAO.getInstance();
    int deletedCount = dao.deletemember(sessionId);

    if (deletedCount > 0) {
        session.invalidate(); 
        response.sendRedirect("resultMember.jsp?msg=4"); 
    } else {
        out.println("<h3>회원 삭제 실패</h3>");
    }
%>

<%-- <sql:setDataSource var="dataSource"
	url="jdbc:mysql://192.168.111.101:3306/testbook"
	driver="com.mysql.jdbc.Driver" user="test1" password="1234" />
	
<sql:update dataSource="${dataSource }" var="resultSet">
 DELETE FROM testmember WHERE id=?
 <sql:param value="<%=sessionId%>" />
</sql:update> --%>

<c:if test="${resultSet >= 1}">
<c:import var="url" url="logoutMember.jsp" />
<c:redirect url="resultMember.jsp?msg=0" />
</c:if>