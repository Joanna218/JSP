<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../config.jsp" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Epoch-register</title>


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
        if ( $(this).scrollTop() > 300){
            $('#gotop').fadeIn("fast");
        } else {
            $('#gotop').stop().fadeOut("fast");
        }
    });
});
	//onblur事件，檢查text box有無填寫以及Double check
  function ckaccountmb(){
    if(document.send.mbaccount.value==''){
          document.getElementById("msg-mbaccount").innerHTML="請輸入帳號";
        }
        else{
          document.getElementById("msg-mbaccount").innerHTML="";
        }
  }

 	function mail(){
 		if(document.send.email.value==''){
      		document.getElementById("msg-email").innerHTML="請輸入電子郵件地址";
    		}
    		else{
    			document.getElementById("msg-email").innerHTML="";
    		}
 	}

 	function ckmail(){
 		var m = document.send.email.value;//取得email值
 		var mc = document.send.ckemail.value;//取得check email值

 		if(document.send.ckemail.value==''){
      		document.getElementById("msg-ckemail").innerHTML="請確認電子郵件地址";
    		}
    		else if (m!=mc)
    		{
    			document.getElementById("msg-ckemail").innerHTML="電子郵件不一致，請重新輸入";
    		}
    		else{
    			document.getElementById("msg-ckemail").innerHTML="";
    		}
 	}

 	function pwsd(){
 		var strpwd = document.getElementById("pwd").vaule;

 		if(document.send.pwd.value==''){
      		document.getElementById("msg-pwsd").innerHTML="請輸入密碼";
    		}
    		else{
    			document.getElementById("msg-pwsd").innerHTML="";
    		}
 	}

 	function ckpwsd(){
 		var p = document.send.pwd.value;//取得pwd值
 		var pc = document.send.ckpwd.value;//取得check pwd值

 		if(document.send.ckpwd.value==''){
      		document.getElementById("msg-ckpwsd").innerHTML="請確認密碼";
    		}
    		else if(p!=pc)
    		{
    			document.getElementById("msg-ckpwsd").innerHTML="密碼不一致，請重新輸入";
    		}
    		else{
    			document.getElementById("msg-ckpwsd").innerHTML="";
    		}
 	}

 	function thename(){
 		if(document.send.name.value==''){
      		document.getElementById("msg-thename").innerHTML="請輸入姓名";
    		}
    		else{
    			document.getElementById("msg-thename").innerHTML="";
    		}
 	}

</script>

<style>
	@import url(../css/register.css);
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
          out.print("<a href='../index.jsp'>"+id+"</a>");
        }
      out.print(" | ");
      out.print("<a href='logout.jsp'>登出</a>");
      }
      else{
        out.print("<a href='login.jsp'> 會員登入</a>");
      }
    %>
		</span>
		</div>

		<!--表單介面-->
	<div class="form-login">
		<form name="send" method="post" action="creat_user.jsp" onsubmit="return chk();">
			<fieldset>
				<h1>會員註冊</h1>
				<p class="form-p">已有會員帳號？<a href="login.jsp">登入</a></p>

				<div class="account">
        帳號<br>
        <input class="form-txt" type="text" name="mbaccoidunt" onblur="ckaccountmb()" required>
        <div id="msg-mbaccount" style="color:red;"></div>
				電子郵件地址<br>
				<input class="form-txt" type="text" name="email" id="email" placeholder="epoch@gmail.com" onblur="mail()" required>
				<div id="msg-email" style="color:red;"></div>
				確認電子郵件地址<br>
				<input class="form-txt" type="text" name="ckemail" id="ckemail" placeholder="epoch@gmail.com" onblur="ckmail()" required>
				<div id="msg-ckemail" style="color:red;"></div>
				密碼<br>
				<input class="form-txt" type="password" name="pwd" id="pwd" onblur="pwsd()" required>
				<div id="msg-pwsd" style="color:red;"></div>
				確認密碼<br>
				<input class="form-txt" type="password" name="ckpwd" id="ckpwd" onblur="ckpwsd()" required>
				<div id="msg-ckpwsd" style="color:red;"></div>

				姓名<br>
				<input class="form-txt" type="text" name="name" id="name" placeholder="江辰" onblur="thename()" required>
				<br>
				<div id="msg-thename" style="color:red;"></div>


				性別<br>
				<select class="gender" name="gender" id="gender" >
					<option value="男性" required>男性</option>
					<option value="女性" required>女性</option>
				</select><br>

			<!--birthday-->
			出生日期<br>
					<tr><td>
  			<select size="1" name="year" id="year" style="width:100px" onfocus="years('year',new Date().getFullYear()),change_date()" onchange="change_date()" required></select>&nbsp;
  			<select size="1" name="month" id="month" style="width:70px" onfocus="months(),change_date()" onchange="change_date()" required></select>&nbsp;
  			<select size="1" name="date" id="date" style="width:50px" onblur="checkday()" required></select>
  					</td></tr>

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

				<pre class="information">按下「登入」後即表示同意條款與條件，並同意
依隱私權政策中所述的方式處理自己的資料。</pre>
				<p class="form-p"><input class="form-btn" type="submit" name="register" id="button" value="註冊"></p>
				</div>

				<!--註冊-->
				<script type="text/javascript">
  					function chk(){

              if(document.send.mbaccount.value==''){
                  alert('請輸入您的帳號！');
                  document.send.mbaccount.focus();
                  return false;
              }

    					if(document.send.email.value==''){
      						alert('請輸入您的email！');
      						document.send.email.focus();
      						return false;
    					}

    					if(document.send.ckemail.value==''){
      						alert('請確認您的email！');
      						document.send.ckemail.focus();
      						return false;
   						}

   						if(document.send.pwd.value==''){
      						alert('請輸入您的密碼！');
      						document.send.pwd.focus();
      						return false;
   						}

   						if(document.send.ckpwd.value==''){
      						alert('請確認您的密碼！');
      						document.send.ckpwd.focus();
      						return false;
   						}

   						if(document.send.name.value==''){
      						alert('請輸入您的姓名！');
      						document.send.name.focus();
      						return false;
   						}

   						if(document.send.year.value==''){
      						alert('請選擇年份！');
      						document.send.year.focus();
      						return false;
   						}

   						if(document.send.month.value==''){
      						alert('請選擇月份！');
      						document.send.month.focus();
      						return false;
   						}

   						if(document.send.date.value==''){
      						alert('請選擇日期！');
      						document.send.date.focus();
      						return false;
   						}
   						alert("恭喜您成為會員！");
   						open("creat_user.jsp");//跳轉頁面至首頁
    					return true;
 					}
  				</script>

		</fieldset>
		</form>
    <!--GOTOP-->
            <b:if cond='data:blog.isMobile'>  <!-- gotop在mobile不顯示的html語法 -->
            <b:else/>
            <div id='gotop' ><center>&#65087;</center>Top</div>  <!-- gotop的html語法 -->
</b:if>
	</div>

	</div>
		<div class="footer">
			@copyright Epoch
		</div>
	 </div>

</body>
</html>
