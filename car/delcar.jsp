<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../config.jsp" %>
<html>
<head>
<title>register</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");%>
<%
				String input_name = request.getParameter("name");
				String input_id = request.getParameter("id");//應該要抓id值
				sql = "DELETE FROM shoporder WHERE name='"+input_name+"' and id ='"+input_id+"'";
				out.println(sql);
				con.createStatement().executeUpdate(sql);
				out.println("<script>alert('刪除成功');</script>");
				response.setHeader("Refresh", "0; URL=shopping_cart.jsp") ;
%>
</body>
</html>