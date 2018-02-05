<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Epoch-member</title>
</head>
<style>
	@import url(../css/mbinformation.css);
	.footer{
    position:relative;
    left:0;
    width: 100%;
    color: gray;
    text-align: center;
    line-height:90px;
    margin-top: 110px;
}
.informationmb{
    margin:auto;
    position:relative;
    width:450px;
    margin-top:30px;
    line-height:30px;
    font-family:微軟正黑體;
    font-size:22px;
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
			<form action="../search.jsp" method="POST" style="display:inline;" >
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
                		<li><a href="../product/i7_8plus.jsp">Iphone7/8+</a>
                		</li>
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
				out.print("<a href='member.jsp'>"+id+"</a>");
				}else{
					out.print("<a href='../index.jsp'>"+id+"</a>");
				}
			out.print("|");
			out.print("<a href='logout.jsp'>登出</a>");
			}
			else{
				out.print("<a href='login.jsp'> 會員登入</a>");
			}
		%>
		</span>
		</div>
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

		<!--會員基本資料-->
		<div class="information">
			<form class="informationmb" method="post" action="update.jsp" onsubmit="modifyaccount()">
				<fieldset>
					<legend>個人資料</legend>
				電子郵址地址：<input type="text" name="email" value="<%=tmp.getString("email")%>"><br>

				密碼：<input type="password" name="mbckpwd" value="<%=tmp.getString("pwd")%>" ><br>
						<!-- 確認密碼：<input type="password" name="pwd" onblur="ckpwsd()" ><br>  -->
						    姓名：<input type="name" name="name" value="<%=tmp.getString("name")%>"><br>
						    性別：<select class="gender" name="gender" id="gender" >
								<option value="<%=tmp.getString("gender")%>"><%=tmp.getString("gender")%></option>
						    <option name="男性" value="男性">男性</option>
						    <option name="女性" value="女性">女性</option></select><br>
						    出生日期：<tr><td><input type="text" readonly value="<%=tmp.getString("year")%>-<%=tmp.getString("month")%>-<%=tmp.getString("date")%>"></td></tr><br>
  						       <!-- <select size="1" name="year" id="year" value="<%=tmp.getString("year")%>" style="width:100px" onfocus="years('year',new Date().getFullYear()),change_date()" onchange="change_date()"></select>&nbsp;
  						       <select size="1" name="month" id="month" value="<%=tmp.getString("month")%>" style="width:70px" onfocus="months(),change_date()" onchange="change_date()"></select>&nbsp;
  						       <select size="1" name="date" id="date" value="<%=tmp.getString("date")%>" style="width:50px" onblur="checkday()"></select></td></tr>
			<%out.print(tmp.getString("date"));%> -->
  			<!--年月日-->
			<script>
			//year
			function years(obj, Cyear) {
    			var len = 28; // option 數量
    			var selObj = document.getElementById(obj);
    			var selIndex = len - 1;
    			var newOpt;

    			// 新增option至year
    			for (i = 1; i <= len; i++) {
        			if (selObj.options.length != len)
        			{
            			newOpt = window.document.createElement("OPTION"); // 新建option
            			newOpt.text = Cyear - len + i; // option的內容
            			newOpt.value = Cyear - len + i; // option的值
            			selObj.options.add(newOpt, i);
        			}
    			}
			}

			function months(){
    			var month = document.getElementById("month");
    			month.length = 0;
    			for (i = 1; i < 13; i++) {
        			month.options.add(new Option(i, i));
    			}
			}


			function change_date(){
    			var year  = document.getElementById("year");
    			var month = document.getElementById("month");
    			var day   = document.getElementById("date");
    			vYear  = parseInt(year.value);
    			vMonth = parseInt(month.value);
    			date.length=0;

    			//依年月新增日期
    			var max = (new Date(vYear,vMonth, 0)).getDate();
    			for (var i=1; i <= max; i++) {
        			date.options.add(new Option(i, i));
    			}
			}
			</script>

				</fieldset>
			<div class="modify">
				<input class="form-btn" type="submit" name="button" id="button" value="修改資料">

				<script>

				function ckpwsd(){
        			var p = document.informationmb.mbpwsd.value;//取得pwd值
        			var pc = document.informationmb.mbckpwd.value;//取得check pwd值

            		if(p!=pc)
            		{
                		alert("密碼不一致，請重新輸入");
            		}
    }

				function modifyaccount(){

					if(document.informationmb.mbckpwsd.value==''){
            			alert("請再次確認您的密碼");
            		}
					else if(confirm("確定要修改您的基本資料嗎？")){
						alert("修改成功！");
					}
					else{
						alert("已取消修改！");
					}
				}
				</script>
			</script>
			</form>
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


	 </div><div class="footer">
			@copyright Epoch
		</div>
</body>
</html>
