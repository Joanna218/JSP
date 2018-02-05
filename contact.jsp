<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Epoch-member</title>
</head>
<style>
	@import url(css/contact.css);
	@import url(css/index.css);
  	.login a:hover{color:#e2007a; text-decoration:underline;}

  	.footer{
    position:relative;
    left:0;
    bottom: 0;
    width: 100%;
    color: gray;
    text-align: center;
    margin-top:110px;
    line-height:60px;
    font-family:sans-serif;
}
</style>
<body>
	<div class="all">

	<div class="container">
	<!--Logo-->
		<div class="logo">
			<a href ="index.jsp" class=""><img src="image/logo.png"></a>
		</div>

	<!--index-->
		<!--search-->
		<div class="search">
			<input type="search" id="search" placeholder="搜尋商品..." />

		<span class="menu">
			<ul class="drop-down-menu">
    			<li><a href="index.jsp">&nbsp;&nbsp;首頁&nbsp;&nbsp;</a>
        		</li>
				<li><a href="store.jsp">&nbsp;&nbsp;商品&nbsp;&nbsp;</a>
        			<ul class="goods">
                		<li><a href="i6.i6s.jsp">Iphone6/6s</a>
              		  	</li>
                		<li><a href="i6.i6splus.jsp">Iphone6+</a>
              		  	</li>
                		<li><a href="i7.8.jsp">Iphone7/8</a>
                		</li>
                		<li><a href="i7.8plus.jsp">Iphone7/8+</a>
                		</li>
                		<li><a href="iX.jsp">IphoneX</a>
                		</li>
            		</ul>
        		</li>
        		<li><a href="member.jsp">會員中心</a>
            		<ul>
                		<li><a href="register.jsp">會員註冊</a>
                		</li>
                		<li><a href="mbinformation.jsp">修改資料</a>
                		</li>
                		<li><a href="orderrecode.jsp">訂單查詢</a>
                		</li>
            		</ul>
        		</li>

       			<li><a href="shopping_cart.jsp">購物車</a>
   	    		</li>
	        	<li><a href="contact.jsp">聯絡我們</a>
	        		<ul>
                		<li><a href="about.jsp">組員簡介</a>
                		</li>
                		<li><a href="message.jsp">留言板</a>
                		</li>
            		</ul>
        		</li>
			</ul>
		</span>
		<span class="login">
			<%
			if(session.getAttribute("id") != null ){
			sql = "SELECT * FROM user WHERE id='" +session.getAttribute("id")+"';";
			ResultSet paperrs1 =con.createStatement().executeQuery(sql);
			String id="", pwd="";
			//讀出id, pwd當成使用者要更改時的內定值
				while(paperrs1.next()){
					id=paperrs1.getString("id");
				}
				if(id.equals("aaa")){
				out.print("<a href='back/member/member.jsp'>"+id+"</a>");
				}else{
					out.print("<a href='mbinformation.jsp'>"+id+"</a>");
				}
			out.print(" | ");
			out.print("<a href='logout.jsp'> <img src='logout.png' width='30px' width='30px'>登出</a>");
			}
			else{
				out.print("<a href='login.jsp'> 會員登入</a>");
			}
		%>
		</span>
		</div>

		<!--聯絡選擇按鈕-->
		<div class="contact-center">
			<button type="image" class="nui-btn" onclick="toabout()"><img src="image/employee.png"></button>
			<button type="button" class="nui-btn" onclick="tomessage()"><img src="image/message2.png"></button>
		</div>

		<div class="contact-center">

			<input type="text" class="textmb" value="組員簡介" size="6" onclick="toabout()">
			<input type="text" class="textmb" value="留言板" size="6" onclick="tomessage()">
		</div>
	</div>

		<script>
			function toabout(){
				document.location.href="about.jsp";
			}

			function tomessage(){
				document.location.href="message.jsp";
			}


		</script>


		<div class="footer">
			@copyright Epoch
		</div>
	 </div>
</body>
</html>
