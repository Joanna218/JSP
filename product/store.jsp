<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../config.jsp" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Epoch-store</title>
</head>
<style>
	@import url(../css/store.css);
	@import url(../css/index.css);
	.store_main{
    margin: auto;
    margin-top: -50px;
    margin-left: -2%;
    padding: 0;
    position: relative;
    text-align:center;
}
.footer{
    position:relative;
    left:0;
    bottom: 0;
    width: 100%;
    color: gray;
    text-align: center;
    line-height:50px;
    margin-top: 450px;
}
    .login a:hover{color:#e2007a; text-decoration:underline;}
</style>
<style type="text/css">
    /*幻燈片css開始*/
* {box-sizing:border-box}

body {font-family: Verdana, sans-serif; margin:0}

.mySlides {display: none}

img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 650px;
  position: relative;
  margin: auto;
  padding-top:30px;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* The dots/bullets/indicators */
.dot {
  cursor:pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
  opacity: 0;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}

/*幻燈片css結束*/
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
	        	<li><a  href="../contact.jsp">聯絡我們</a>
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
		<!--slideshow image setting-->
    <div class="slideshow-container">

      <div class="mySlides fade">
          <a href="goods/17.jsp"><img src="../image/store/TOP1.jpg" style="width:100%"></a></div>

      <div class="mySlides fade">
          <a href="goods/9.jsp"><img src="../image/store/TOP 2.png" style="width:100%"></a></div>

        <div class="mySlides fade">
          <a href="goods/11.jsp"><img src="../image/store/TOP 3.png" style="width:100%"></a></div>





    </div>
    <br>

    <div style="text-align:center">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
         </div>

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
		<div class="store_main">
			<ul class="choose_the_phone">
				<li><a href="i6_i6s.jsp" class="product"><img width="250" height="350" src="../image/store/i6.i6s.png"></a>
				</li>
				<li><a href="i6_i6splus.jsp" class="product"><img width="250" height="350" src="../image/store/i6.i6splus.png"></a>
				</li>
				<li><a href="i7_8.jsp" class="product"><img width="250" height="350" src="../image/store/i7.82.png"></a>
				</li>
				<li><a href="i7_8plus.jsp" class="product"><img width="250" height="350" src="../image/store/i7.8plus.png"></a>
				</li>
				<li><a href="iX_jsp" class="product"><img width="250" height="350" src="../image/store/iX.png"></a>
				</li>

			</ul>
		</div>

	 </div>
	 <div class="footer">
            @copyright Epoch
        </div>

</body>
</html>
