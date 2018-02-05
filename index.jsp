<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Epoch-index</title>
</head>

<style>
	@import url(css/index.css);
  .login a:hover{color:#e2007a; text-decoration:underline;}

  .footer{
    position:relative;
    left:0;
    width: 100%;
    color: gray;
    text-align: center;
    line-height:140px;

}

</style>
<body>
	<div class="all">

	<div class="container">
<%
//選擇資料表
  sql = "SELECT counter FROM counter";
  ResultSet rs4=con.createStatement().executeQuery(sql);
  int k=0;
  while(rs4.next()) {
    k=Integer.parseInt(rs4.getString("counter"));
  }
  if(session.isNew()) {
    sql="UPDATE counter SET counter = '"+String.valueOf((k+1))+"' WHERE counter = '"+String.valueOf(k)+"'" ;
    con.createStatement().execute(sql);
    out.print("你是第"+(k+1) + "位訪客"  + "<br>");
  }else{
    out.print("你是第" + k + "位訪客"  + "<br>");
  }

%>

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
                		<li><a href="product/i7_8plus.jsp">Iphone7/8+</a>
                		</li>
                		<li><a href="product/iX.jsp">IphoneX</a>
                		</li>
            		</ul>
        		</li>
        		<li><a href="user/member.jsp" onclick="checkmb()">會員中心</a>
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
				out.print("<a href='login.jsp'>會員登入</a>");
			}
		%>
		</span>
		</div>
		</div>

		<!--slideshow image setting-->
		<div class="slideshow-container">

			<div class="mySlides fade">
  				<img src="image/slide/thelatest.png" style="width:100%"></div>

			<div class="mySlides fade">
  				<img src="image/slide/best.png" style="width:100%"></div>

  			<div class="mySlides fade">
  				<a href="i6_i6s.jsp"><img src="image/slide/i6.png" style="width:100%"></a></div>

  			<div class="mySlides fade">
  				<a href="i7_8.jsp"><img src="image/slide/i7.png" style="width:100%"></a></div>

  			<div class="mySlides fade">
  				<a href="i7_8plus.jsp"><img src="image/slide/i8.png" style="width:100%"></a></div>

  			<div class="mySlides fade">
  				<a href="iX.jsp"><img src="image/slide/iX.png" style="width:100%"></a></div>



		</div>
		<br>

		<div style="text-align:center">
  			<span class="dot" onclick="currentSlide(1)"></span>
  			<span class="dot" onclick="currentSlide(2)"></span>
  			<span class="dot" onclick="currentSlide(3)"></span>
  			<span class="dot" onclick="currentSlide(4)"></span>
  			<span class="dot" onclick="currentSlide(5)"></span>
  			<span class="dot" onclick="currentSlide(6)"></span> </div>

		<!--slideshow function-->
		<script>
			var slideIndex = 1;
      handshowSlides(slideIndex);

      function handshowSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        if (n > slides.length) {slideIndex = 1}
        if (n < 1) {slideIndex = slides.length}
        for (i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
          dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex-1].style.display = "block";
        dots[slideIndex-1].className += " active";
        }

      //自動撥放

        var tslideIndex = 0;
        showSlides();

      function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";
        }
        tslideIndex++;
        if (tslideIndex > slides.length) {tslideIndex = 1}
        for (i = 0; i < dots.length; i++) {
          dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[tslideIndex-1].style.display = "block";
        dots[tslideIndex-1].className += " active";
        setTimeout(showSlides, 2000); // Change image every 2 seconds
      }
		</script>

		<div class="footer">
			@copyright Epoch
		</div>
	 </div>
</body>
</html>
