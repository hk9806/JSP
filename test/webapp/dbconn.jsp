<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 Connection conn = null;

try{
 String url = "jdbc:mysql://192.168.111.101:3306/testbook";
 String user="test1";
 String password="1234";
 
 Class.forName("com.mysql.jdbc.Driver"); //jdbc드라이버 사용
 System.out.println("1단계 수행");
 conn=DriverManager.getConnection(url, user, password);
 System.out.println("2단계 수행");
 //jdbc 1,2 단계 연결용
 
}catch (SQLException e){
	out.println("데이터베이스 연결 실패 1,2단계 오류 발생<br>");
	out.println("SQLException: "+e.getMessage());
}
%>