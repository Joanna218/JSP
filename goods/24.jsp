<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>I6.6splus_iJacket 大眼仔 矽膠軟套</title>
	<!-- demo only -->
	<link href="http://fonts.googleapis.com/css?family=Merienda+One" rel="stylesheet">
	<link rel="stylesheet" href="../style.css">

	<!-- anythingZoomer required -->
	<link rel="stylesheet" href="../anythingzoomer.css">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
	<script src="../js/jquery.anythingzoomer.js"></script>
	<script>
	$(function() {

		// clone the text
		$(".zoomer:first").anythingZoomer({
			clone : true
		});

		$(".zoomer:last").anythingZoomer();

		$("button").click(function(){
			var state = $(this).text(); // enable or disable
			$(".zoom:eq(" + $(this).attr('data-id') + ")").anythingZoomer(state);
			$(this).text( (state === "enable") ? "disable" : "enable" );
			return false;
		});

	});
	</script>
</head>
<style>
	@import url(../store.css);

	.good{
		margin-left:11%;
	}

	.product-details_information{
    margin:auto;
    margin-top: 120px;
    margin-left: 190px;
    margin-bottom:20px;
    width: 650px;
    padding:0;
    line-height: 2em;
}

.footer{
    position:relative;
    width: 100%;
    color: gray;
    text-align: center;
    line-height:30px;
    margin-top: 2%;
}
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
			<form action="search.jsp" method="POST">
			<input type="text" id="search" name="search" placeholder="搜尋商品..." />
			</form>
		<!--下拉式-->
		<span class="menu">
			<ul class="drop-down-menu">
    			<li><a href="../index.jsp">&nbsp;&nbsp;首頁&nbsp;&nbsp;</a>
        		</li>
				<li><a href="../store.jsp">&nbsp;&nbsp;商品&nbsp;&nbsp;</a>
        			<ul class="goods">
                		<li><a href="../i6.i6s.jsp">Iphone6/6s</a>
              		  	</li>
                		<li><a href="../i6.i6splus.jsp">Iphone6+</a>
              		  	</li>
                		<li><a href="../i7.8.jsp">Iphone7/8</a>
                		</li>
                		<li><a href="../i7.8plus.jsp">Iphone7/8+</a>
                		</li>
                		<li><a href="../iX.jsp">IphoneX</a>
                		</li>
            		</ul>
        		</li>
        		<li><a href="../member.jsp">會員中心</a>
            		<ul>
                		<li><a href="../register.jsp">會員註冊</a> 
                		</li>
                		<li><a href="../mbinformation.jsp">修改資料</a>
                		</li>
                		<li><a href="../orderrecode.jsp">訂單查詢</a>
                		</li>
            		</ul>
        		</li>
        		
       			<li><a href="../shopping_cart.jsp">購物車</a>
   	    		</li> 
	        	<li><a href="../contact.jsp">聯絡我們</a>
	        		<ul>
                		<li><a href="../about.jsp">組員簡介</a>
                		</li>
                		<li><a href="../message.jsp">留言板</a>
                		</li>
            		</ul>
        		</li>
			</ul>
		</span>
		<span class="login">
				<a href="../login.jsp">會員登入</a>
			</span>		
		</div>		
			
		
<%
		   ResultSet rs;
           con.createStatement().execute(sql);
		   
		   sql="select * from product where product_no=1";
		   rs=con.createStatement().executeQuery(sql);
		   
		//   String no1=(String) application.getAttribute("no");
		   
		  
		  
		   
		   
//Step 4: 執行 SQL 指令	
       
		rs=con.createStatement().executeQuery(sql);
	    con.createStatement().execute(sql);
		while(rs.next())
		{
		
%>	
	 <!--商店-->
	 <div class="columns-3">
			<div class="product-details">
		<br>
		<br>
	
		<div class="good" data-columns="5" ease-in-out>
			<figure class="product-details_photo">
				<div data-thumb="" class="">
					<div class="zoomer">

		<div class="small">
			<img src="../image/i6.6splus/24.jpg" alt="smalliJacket 大眼仔 矽膠軟套">
	  </div>

		<div class="large">
			<img src="../image/i6.6splus/24.jpg" alt="bigiJacket 大眼仔 矽膠軟套">
		</div>

	</div></div>	
		
		</figure>
		<div class="">
		<div class="product_entry-title">
		<span class="onsale">特價</span>
		<h1 class="product_entry-title_name">iJacket 大眼仔 矽膠軟套</h1><p class="price">
		</div></p>
			<del><span class=""><span class="Price-currencySymbol">&#78;&#84;&#36;</span>250</span></del> 
			<ins><span class=""><span class="">&#78;&#84;&#36;</span><%=rs.getString("product_price")%></span></ins></p>
			
			<br>
		</div>
	
		<form class="cart" method="get" enctype='multipart/form-data' action="../addcar.jsp">
			<div class="quantity">
			<label class="screen-reader-text" for="quantity_5a3f2f78f12b3">數量</label>
			<input type="number" id="quantity_5a3f2f78f12b3" class="input-text qty text" step="1" min="1" max="" name="quantity" value="1" title="數量" size="4" pattern="[0-9]*" inputmode="numeric" />
			</div>
			<br>
			
			<input type="hidden" name="name" value="I6.6splus_iJacket 大眼仔 矽膠軟套" >
			<input type="submit" name="add-to-cart" value="加入購物車" class="product_entry-add_to_cart" />
		
	
			
		
			</form>
		<%}%>
		
	 </div>
	 <div></div>
	 <div class="product-details_information">
	 	<form>
	 	<fieldset>
	 		<legend>商品介紹</legend>
	 		❶立體角色，摸起來超有質感 
	 		<br>
	 		❷卡通流行角色，可愛無法擋<br>
	 		❸高品質矽膠材質 <br>
	 		❹內附高品質擦拭布
	 	</fieldset>
	 	
	 	</form>
	 </div>

	 </div>
		 
			
	 </div><div class="footer">
			@copyright Epoch
			</div>
</body>
</html>
