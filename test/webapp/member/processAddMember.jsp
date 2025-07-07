<%@page import="mvc.model.memberDAO"%>
<%@page import="mvc.model.memberDTO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String year = request.getParameter("birthyy");
    String month = request.getParameter("birthmm");
    String day = request.getParameter("birthdd");
    String birth = year + "/" + month + "/" + day;
    String mail = request.getParameter("mail1") + "@" + request.getParameter("mail2");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");

    java.sql.Timestamp regist_day = new java.sql.Timestamp(System.currentTimeMillis());

    // DTO 객체 생성
    memberDTO member = new memberDTO();
    member.setId(id);
    member.setPassword(password);  
    member.setName(name);
    member.setGender(gender);
    member.setBirth(birth);
    member.setMail(mail);
    member.setPhone(phone);
    member.setAddress(address);
    member.setRegist_day(regist_day.toString());

    // DAO 호출
    memberDAO dao = memberDAO.getInstance();
    dao.addmember(member);  // DB 저장

    // 성공 시 이동
    response.sendRedirect("resultMember.jsp?msg=1");
%>
