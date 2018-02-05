<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>

<%
  Class.forName("com.mysql.jdbc.Driver");
  String url="jdbc:mysql://localhost/";
  Connection con=DriverManager.getConnection(url,"root","1234");
  String sql="use final_demo";
  con.createStatement().execute(sql);
%>