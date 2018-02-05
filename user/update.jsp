<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../config.jsp" %>

<%
		String input_email = request.getParameter("email");
		String id = (String)session.getAttribute("id");
		String input_pwd = request.getParameter("pwd");
		String input_name = request.getParameter("name");
		String input_gender = request.getParameter("gender");

			if(id!=null){
			sql="UPDATE user SET pwd= '"+input_pwd+"',gender='"+input_gender+"',name = '"+input_name+"' ,email='"+input_email+"' WHERE id = '"+id+"'";
			con.createStatement().execute(sql);
			response.sendRedirect("member.jsp") ;
			} else {
%>
<h1><font color="red">您尚未登入，請登入！</font></h1>
<form action="check.jsp" method="POST">
帳號：<input type="text" name="id" /><br />
密碼：<input type="password" name="pwd" /><br />
<input type="submit" name="b1" value="登入" />
</form>

<%
}
%>


