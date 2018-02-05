<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../config.jsp" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Epoch</title>
</head>
<script type="text/javascript">

    //GOTOP
    $(function(){
    $("#gotop").click(function(){
        jQuery("html,body").animate({
            scrollTop:0
        },700);
    });
    $(window).scroll(function() {
        if ( $(this).scrollTop() > 30){
            $('#gotop').fadeIn("fast");
        } else {
            $('#gotop').stop().fadeOut("fast");
        }
    });
});
</script>
<style>
	@import url(../css/orderrecode.css);
	@import url(../css/index.css);
	.footer{
    	position:relative;
    	left:0;
    	bottom: 0;
    	width: 100%;
    	height:50px;
    	color: gray;
    	text-align: center;
    	line-height: 50px;
	}
	.name{
        width:360;
        margin:auto;
        padding: 0;
    }

    .name img{
        vertical-align:middle;
    }
	#gotop {
    z-index: 1;
    display: none;
    position: fixed;
    right: 90px;
    bottom: 25px;
    padding: 10px 15px;
    font-size: 15px;
    background: #777;
    color: white;
    cursor: pointer;
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
			<form action="search.jsp" method="POST" style="display:inline;" >
			<%-- <input type="text" id="search" name="search" placeholder="搜尋商品..." /> --%>
		</form>

		<span class="menu">
			<ul class="drop-down-menu">
    			<li><a href="../index.jsp">&nbsp;&nbsp;首頁&nbsp;&nbsp;</a>
        		</li>
				<li><a href="../product/store.jsp">&nbsp;&nbsp;商品&nbsp;&nbsp;</a>
        			<ul class="goods">
                		<li><a href="../product/i6_i6s.jsp">Iphone6/6s</a>
              		  	</li>
                		<li><a href="../product/i6_i6splus.jsp">Iphone6+</a>
              		  	</li>
                		<li><a href="../product/i7_8.jsp">Iphone7/8</a>
                		</li>
                		<li><a href="../product/i7_8plus.jsp">Iphone7+</a>

                		<li><a href="../product/iX.jsp">IphoneX</a>
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
		<!-- 登入控制，若未登入，請先登入 -->
		<%
		if(session.getAttribute("id") != null ){
		    sql = "SELECT * FROM user WHERE id='" +session.getAttribute("id")+"';";
			ResultSet paperrs1 =con.createStatement().executeQuery(sql);
			String id="", pwd="";
			//讀出id, pwd當成使用者要更改時的內定值
			while(paperrs1.next()){
			    //name=paperrs1.getString(1);
			    id=paperrs1.getString("id");
				pwd=paperrs1.getString("pwd");
			}

		%>

		<%
			//request.setCharacterEncoding("UTF-8");
			sql = "SELECT * FROM user WHERE id = '"+id+"'";
			ResultSet tmp = con.createStatement().executeQuery(sql);
			while(tmp.next())
			{
		%>
<%
			sql="select * from book where id='" +session.getAttribute("id")+"';";//應該是要抓使用者id值
			ResultSet rs;
			rs=con.createStatement().executeQuery(sql);
			rs.last();
			//int n=rs.getRow();
			rs=con.createStatement().executeQuery(sql);
		%>

		<!--訂單資料-->
		<div class="buylist">
			<table>
				<caption>您的訂單紀錄</caption>
				<tr>
					<td class="listname">商品名稱</td>
					<td>數量</td>
					<td>金額</td>

				</tr>


		<div class="order_content">
		<%

		while(rs.next())
		{
			//out.print(rs.getString("name"));
            //out.print("<table>");
		    out.print("<tr>");
			//out.print("<td>"+rs.getString("no")+"</td>");
			//out.print("<td><img src='"+rs.getString("img")+"'></td>");
			out.print("<td class='name'>"+rs.getString("name")+"</td>");
			out.print("<td>"+rs.getString("quantity")+"</td>");
			out.print("<td>"+rs.getString("new_totalprice")+"</td>");
			out.print("</tr>");
		}


        %></table>
		</div>

		<%
			}
		}

		else{

	%>
		<script>
			alert("您尚未登入，請登入！");
			location.href='login.jsp';
		</script>


		<%
		}
		%>
		<!-- gotop -->
		<b:if cond='data:blog.isMobile'>  <!-- gotop在mobile不顯示的html語法 -->
			<b:else/>
			<div id='gotop' ><center>&#65087;</center>Top</div>  <!-- gotop的html語法 -->
			</b:if>

		<div class="footer">
			@copyright Epoch
		</div>

	 </div>

</body>
</html>
