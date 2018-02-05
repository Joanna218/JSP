<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Epoch</title>
</head>
<style>

	@import url(about.css);
    @import url(index.css);
    .about_1{
  margin:auto;
  margin-left: 32%;
  margin-top: 50px;
  margin-bottom:;
  width: 600px;
  border-style:dashed;
  border-color: gray;
  padding:0 30px 0 30px;
}

td{
    padding:10px;
}
  .login a:hover{color:#e2007a; text-decoration:underline;}


.footer{
    position:relative;
    left:0;
    width: 100%;
    height: 50px;
    color: gray;
    text-align: center;
    line-height:55px;
    /*margin-top: 120px;*/
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
	        	<li><a  href="contact.jsp">聯絡我們</a>
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
		</div>
		

        <div class="aboutmb">
            <table class="about_1">
                <tr >
                    <td rowspan="2"><img src="image/about/10544113.jpg" alt="" width="200" height="200"></td>
                    <td valign="top"><p>資管二甲 10544113 蔡宜真 </td>
                </tr>
                <tr>
                    <td>這次的期末專案比期中更高了一層難度，
                    完全從無到有的生出一個網站，真的花了很多的心力。
                    時間湊不攏、想法不同…我們遇到了很多挑戰，
                    最後在和組員密集的討論之下也一一克服了。
                    也因為這次專案的實行，
                    更明白了寫出一個網頁並和後端做連結並不是想像中合併兩樣東西那麼簡單，
                    有很多細節部分需要經過雙方的溝通與協調。
                    很感謝這次的夥伴們都十分盡責也很努力地一起朝著目標前進，
                    沒有這群夥伴一定沒有辦法完成這次的專案，真的十分感謝。</p></td>
                </tr>
            </table>
            <table class="about_1">
                <tr >
                    <td><img src="image/about/10544123.jpg" alt="" width="200" height="200"></td>
                    <td valign="top"><p>資管二甲 10544123 劉睿璇 <br><br>
                    這次對於上大學的我們算是一個很大的挑戰吧，
                    因為我們必須白手起家的去做出一個擁有完整基本功能的商業網站。
                    整體上的挑戰性很高，過程中碰到很多的困難，
                    像是不知道該寫哪種事件達到想要的效果；
                    前後端的合併也是一大挑戰。幸虧合作組員都很配合，
                    雖然只有短短一個月可以準備，
                    到了最後一天晚上大家也都還很拼命的在做最後調整及確認，
                    但是做出來的成果還算是滿意，尤其在撰寫的過程中，
                    因為全部都是從零開始，因此有許多不會的不懂的都上網查了，
                    也很認真的看、認真的研究了，所以也算是學會了更多多樣性的功能。
                    最後，對於期末專案總的來說算是受益良多，也感謝組員們的配合，
                    儘管時間上、溝通上有時候會對不上，但我們也完成了，
                    大家都很棒！都辛苦了！</p></td>
                </tr>
            </table>
            <table class="about_1">
                <tr >
                    <td><img src="image/about/10544216.jpg" alt="" width="200" height="200"></td>
                    <td valign="top"><p>資管二乙 10544216 李旭婷 <br><br><br><br><br>
                    與林靜妤同學共同完成後端作業。</p></td>
                </tr>
            </table>
            <table class="about_1">
                <tr >
                    <td><img src="image/about/10544218.jpg" alt="" width="200" height="200"></td>
                    <td valign="top"><p>資管二乙 10544218 林靜妤 <br><br><br><br><br>
                    與李旭婷同學共同完成後端作業。</p></td>
                </tr>
            </table>
        </div>
        


		
	 </div>
     <div class="footer">
            @copyright Epoch
        </div>
</body>
</html>
