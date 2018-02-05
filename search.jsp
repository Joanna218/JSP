<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Epoch-i6/6s商品</title>
</head>
<style>
	@import url(css/search.css);

	.product-details_information{
    margin:auto;
    margin-top: 50px;
    margin-left: 400px;
    margin-bottom: 50px;
    width: 650px;
    padding:0;
    line-height: 2em;
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

		<form action="search.jsp" method="POST" style="display:inline;" >
			<input type="text" id="search" name="search" placeholder="搜尋商品..." />
		</form>

		<!--下拉式-->
		<span class="menu">
			<ul class="drop-down-menu">
    			<li><a href="index.jsp">&nbsp;&nbsp;首頁&nbsp;&nbsp;</a>
        		</li>
				<li><a href="product/store.jsp">&nbsp;&nbsp;商品&nbsp;&nbsp;</a>
        			<ul class="goods">
                		<li><a href="product/i6_i6s.jsp">Iphone6/6s</a>
              		  	</li>
                		<li><a href="product/i6_i6splus.jsp">Iphone6+</a>
              		  	</li>
                		<li><a href="product/i7_8.jsp">Iphone7/8</a>
                		</li>
                		<li><a href="product/i7_8plus.jsp">Iphone7+</a>

                		<li><a href="product/iX.jsp">IphoneX</a>
                		</li>
            		</ul>
        		</li>
        		<li><a href="user/member.jsp">會員中心</a>
            		<ul>
                		<li><a href="user/register.jsp">會員註冊</a>
                		</li>
                		<li><a href="user/mbinformation.jsp">修改資料</a>
                		</li>
                		<li><a href="user/orderrecode.jsp">訂單查詢</a>
                		</li>
            		</ul>
        		</li>

       			<li><a href="car/shopping_cart.jsp">購物車</a>
   	    		</li>
	        	<li><a href="contact.jsp">聯絡我們</a>
	        		<ul>
                		<li><a href="about.jsp">組員簡介</a>
                		</li>
                		<li><a href="board/message.jsp">留言板</a>
                		</li>
            		</ul>
        		</li>
			</ul>
		</span>
		<span class="login">
				<a href="user/login.jsp">會員登入</a>
			</span>
		</div>

		<div class="columns-3">
	 	<div class="product-details">
<%
			request.setCharacterEncoding("utf-8");
			sql = "SELECT  * FROM product WHERE product_name LIKE '%"+request.getParameter("search")+"%'";
			ResultSet tmp = con.createStatement().executeQuery(sql);

			while(tmp.next())
			{
			if(tmp.getString("YN").equals("Y")){
%>
		</div>
	 <!--商店-->


		<div class="product-details_information">
			<%
			  out.print("<img width='300' height='300' src="+tmp.getString("image_path")+"><br>");
			  out.print("名稱:"+tmp.getString("product_name")+"<br>");
			  out.print("價格:"+tmp.getString("product_price")+"<br>");
      %>
			<%}
			}%>
			</div>
		</div>

		</div>
		<!--footer-->
		<div class="footer">
			@copyright Epoch
		</div>
	 </div>


</body>
</html>
