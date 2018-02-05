<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Epoch-shoppingcart</title>
	<style type="text/css" media="screen">
		.shopping_title_count_money table{
            margin:auto;
            padding: 0;
            margin-left:0%;
            width: 50%;
        }
        table{
    		margin:auto;
    		margin-top:30px;
    		padding: 0;

    		font-size:22px;
    		line-height:40px;
    		width:770px;
    		text-align:center;
		}



		.listname{
    		width:300px;
		}

		.btndelete{
			background-color: #FFFFFF;
    		color:#666666;
    		line-height: 1.5em;
    		font-size:15px;
    		border-radius: 5px;/*邊界弧度*/
    		background-color:white;
    		border: #888888 2px solid;
		}
		.btncheckout{
			background-color: #FFFFFF;
    		color:#666666;
    		line-height: 1.5em;
    		font-size:15px;
    		border-radius: 5px;/*邊界弧度*/
    		background-color:white;
    		border: #888888 2px solid;
    		margin-left:6.5%;


		}
		.btndelete:hover,.btncheckout:hover{
			color: #AAAAAA;
		}
		.ttmoney{
			margin-left:60%;
			float:left;
		}
		.footer{
    position:relative;
    left:0;
    width: 100%;
    color: gray;
    text-align: center;
    line-height:50px;
    margin-top: 120px;
}

	</style>
	<script type="text/javascript">
		$(function(){
    	$("#gotop").click(function(){
        jQuery("html,body").animate({
            scrollTop:0
        },700);
    });
    $(window).scroll(function() {
        if ( $(this).scrollTop() > 300){
            $('#gotop').fadeIn("fast");
        } else {
            $('#gotop').stop().fadeOut("fast");
        }
    });
});
</script>
</head>
<style>
	@import url(../css/shoppingcart.css);
	@import url(../css/index.css);
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
			<input type="text" id="search" name="search" placeholder="搜尋商品..." />
		</form>

		<span class="menu">
			<ul class="drop-down-menu">
    			<li><a href="../index.jsp">&nbsp;&nbsp;首頁&nbsp;&nbsp;</a>
        		</li>
				<li><a href="../product/store.jsp">&nbsp;&nbsp;商品&nbsp;&nbsp;</a>
        			<ul class="goods">
                		<li><a href="../product/i6._i6s.jsp">Iphone6/6s</a>
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

       			<li><a href="shopping_cart.jsp">購物車</a>
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
				out.print("<a href='../user/login.jsp'>會員登入</a>");
			}
		%>
		</span>
		</div>
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
			//sql="select * from shoporder where no='34'";
			sql="select * from shoporder where id='" +session.getAttribute("id")+"';";//應該是要抓使用者id值
			ResultSet rs;
			rs=con.createStatement().executeQuery(sql);
			rs.last();
			//int n=rs.getRow();
			rs=con.createStatement().executeQuery(sql);

%>
		<div class="shopping_enter">
			<h2 class="shopping_title">您的購物車</h2>
            <table>
                <tr>
                	<td class="listname">商品名稱</td>
                    <td>數量</td>
                    <td>金額</td>
                    <td></td>
                </tr>

			<hr size="1" width="50%">
		<%
		// a表quantity;span表price
		while(rs.next())
		{

		    out.print("<tr>");
			out.print("<td class='listname'><img height='50' width='50' src='"+rs.getString("img")+"'>"+rs.getString("name")+"</td>");
			out.print("<td><div>"+rs.getString("quantity")+"</div></td>");
			out.print("<td><div>"+rs.getString("new_totalprice")+"</div></td>");
			out.print("<td><form action='delcar.jsp' method='POST'>");
			out.print("<input type='hidden' name='id' value='"+session.getAttribute("id")+"'>");
			out.print("<input type='hidden' name='name' value='"+rs.getString("name")+"'>");
			out.print("<input type='submit' name='submit' value='X' class='btndelete'>");
			out.print("</form>");

		}
		out.print("</form></td></tr></table>");
	%>
	</div>


			<%
			Integer totalsum =0;
			sql="select * from shoporder where id='" +session.getAttribute("id")+"';";//應該是要抓使用者id值
			rs=con.createStatement().executeQuery(sql);
			while(rs.next()){
			totalsum +=rs.getInt("new_totalprice");}

			%>

			<!--放已選定的商品 -->
			<br><br>
			<hr size="1" width="50%">
			<span class="ttmoney">共<%=totalsum%>元</span>
			<%
			rs=con.createStatement().executeQuery(sql);
			while(rs.next()) {
			out.print("<form action='pay.jsp' method='POST' class='checkout'>");
			out.print("<td><input type='hidden' name='id' value='"+session.getAttribute("id")+"'></td>");
			out.print("<td><input type='hidden' name='name' value='"+rs.getString("name")+"'></td>");
			out.print("<td><input type='hidden' name='num' value='"+rs.getString("quantity")+"'></td>");

			}
			out.print("<input type='submit' name='sumbit' value='結帳' class='btncheckout'>");
			out.print("</form>");
			%>
		<%
			}
		}

		else{
	%>

		<script>
			alert("您尚未登入，請登入！");
			location.href='../user/login.jsp';
		</script>

		<%
		}
		%>

		</div>

		<!--GOTOP-->
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




