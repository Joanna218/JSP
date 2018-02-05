<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../config.jsp" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Epoch-i6/6s商品</title>
</head>
<style>
	@import url(../css/store.css);
	@import url(../css/index.css);
	/*.products-first{
    position: relative;
    margin: auto;
    padding:10px;
    color:gray;
    width:350;
    height:350;
    max-width: 250px;
}*/
	.length{
		width: 300px;
		height: 300px;
	}
	.goodsname{
		width: 300px;
		height: 50px;
	}
	.products-main{
		width: 1200px;
	}
	.products-first{
		height:400px;
	}
	.footer{
    position:relative;
    left:0;
    width: 100%;
    color: gray;
    text-align: center;
    line-height:20px;
    margin-top: 20px;
}
    .login a:hover{color:#e2007a; text-decoration:underline;}
</style>
<body>
	<div class="all">

	<div class="container">
	<!--Logo-->
		<div class="logo">
			<a href ="../index.jsp" class=""><img src="../image/logo.png"></a>
		</div>

	<!--index-->
		<!--search-->
		<div class="search">
		<form action="../search.jsp" method="POST" style="display:inline;" >
			<input type="text" id="search" name="search" placeholder="搜尋商品..." />
		</form>

		<!--下拉式-->
		<span class="menu">
			<ul class="drop-down-menu">
    			<li><a href="../index.jsp">&nbsp;&nbsp;首頁&nbsp;&nbsp;</a>
        		</li>
				<li><a href="store.jsp">&nbsp;&nbsp;商品&nbsp;&nbsp;</a>
        			<ul class="goods">
                		<li><a href="i6_i6s.jsp">Iphone6/6s</a>
              		  	</li>
                		<li><a href="i6_i6splus.jsp">Iphone6+</a>
              		  	</li>
                		<li><a href="i7_8.jsp">Iphone7/8</a>
                		</li>
                		<li><a href="i7_8plus.jsp">Iphone7/8+</a>
                		</li>
                		<li><a href="iX.jsp">IphoneX</a>
                		</li>
            		</ul>
        		</li>
        		<li><a href="../user/member.jsp">會員中心</a>
            		<ul>
                		<li><a href="../user/register.jsp">會員註冊</a>
                		</li>
                		<li><a href="../user/mbinformation.jsp">修改資料</a>
                		</li>
                		<li><a href="../user/orderrecode.jsp">訂單查詢</a>
                		</li>
            		</ul>
        		</li>

       			<li><a href="../car/shopping_cart.jsp">購物車</a>
   	    		</li>
	        	<li><a href="../contact.jsp">聯絡我們</a>
	        		<ul>
                		<li><a href="../about.jsp">組員簡介</a>
                		</li>
                		<li><a href="../board/message.jsp">留言板</a>
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
				out.print("<a href='../back/member/member.jsp'>"+id+"</a>");
				}else{
					out.print("<a href='../user/mbinformation.jsp'>"+id+"</a>");
				}
			out.print(" | ");
			out.print("<a href='../user/logout.jsp'> <img src='../user/logout.png' width='30px' width='30px'>登出</a>");
			}
			else{
				out.print("<a href='../user/login.jsp'> 會員登入</a>");
			}
		%>
		</span>
		</div>

		</div>

	 </div>

	 <!--商店-->



			<div class="products-main">
				<!--第一行列-->
				<ul calss="products" id="first">
			<%
				    sql = "SELECT * FROM i78p ";
				    //sql = "SELECT * FROM product ";
				    ResultSet rs = con.createStatement().executeQuery(sql);
				    while(rs.next()) {
				      if(rs.getString("YN").equals("Y")){
			%>
					<li class="products-first">
						<a  class="product"  href='goods/<%=rs.getString("num")%>'>
						<img width="200" height="200" src='../back/product/<%=rs.getString("image_path")%>'>
						<div class="length">
							<h2 class="goodsname"><%=rs.getString("product_name")%></h2>
							<span class="onsale">&nbsp;特價&nbsp;</span><br>

							<span class="price">
								<del>
									<span >
										<span >&#78;&#84;&#36;</span>250
									</span></del>
								<ins><span >
								<span >&#78;&#84;&#36;</span><%=rs.getString("product_price")%>
								</span></ins></span>
						</a><br>

						</div>
					</li>
			<%
      				}
    			}
    		%>
				</ul>
			</div>
	 </div>
	<!--footer-->
		<div class="footer">
			@copyright Epoch
		</div>

</body>
</html>
