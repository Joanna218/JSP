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
				String input_num = request.getParameter("num");
				Integer newnum=0;//庫存減購買的
				String orinum="";//原庫存的
				sql="select * from shoporder WHERE id = '"+input_id+"'" ;//id
				ResultSet rs=con.createStatement().executeQuery(sql);
				while(rs.next())
				{
				 sql="select * from product where product_name='"+input_name+"'";
				 rs=con.createStatement().executeQuery(sql);
				 while(rs.next()){
				 orinum=rs.getString("product_num");
				 newnum=Integer.parseInt(orinum)-Integer.parseInt(input_num);
				 String sv = String.valueOf(newnum);
				sql="UPDATE product SET product_num = '"+sv+"' WHERE product_name = '"+input_name+"'";//改變剩餘
				int rs1=con.createStatement().executeUpdate(sql);
				sql = "DELETE FROM shoporder WHERE  id ='"+input_id+"'";
			    int rs2=con.createStatement().executeUpdate(sql);
				 }
				}
				out.println("<script>alert('結帳成功');</script>");
				response.setHeader("Refresh", "0; URL=shopping_cart.jsp") ;
%>
</body>
</html>