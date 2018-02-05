<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../config.jsp" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Epoch</title>
  <link rel="stylesheet" href="../css/login.css">
</head>

<div class="all">
  <div class="container">
  <!--Logo-->
    <div class="logo">
      <a href ="../index.jsp" class=""><img src="../image/logo.png"></a>
    </div>

  <!--index-->
    <!--search-->
    <div class="search">
      <%-- <input type="search" id="search" placeholder="搜尋商品..." /> --%>
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
          <a href="login.jsp">會員登入</a>
      </span>
    </div>

    <%
        Cookie[] cks=request.getCookies();
        if(cks != null){
          boolean flagCookie=false;
          for(int i =0;i<cks.length;i++){
            if(cks[i].getName().equals("id")){
              flagCookie=true;
              session.setAttribute("id",cks[i].getValue());
              break;
            }
          }
          if(flagCookie){
            response.sendRedirect("../index.jsp");
          }
      }
    %>
      <!--表單介面-->
  <div class="form-login">
      <form name="send" method="post" action="check.jsp" onsubmit="return chk();">
        <fieldset>
          <h1>登入</h1>
          <input class="form-txt" type="text" placeholder="會員帳號" value="" name="id" required><br>
          <div class="information" id="msg-account" style="color:red;"></div>
          <input class="form-txt" type="password" placeholder="會員密碼" value="" name="pwd"  required>
          <div class="information" id="msg-pwd" style="color:red;"></div>
          <pre>按下「登入」後，即表示同意條款與條件，
  並同意依隱私權政策中所述的方式處理自己的資料。</pre>
          <input type="checkbox" name="keep" value="yes">記住我
          <p class="form-p"><input class="form-btn" type="submit" value="登入"></p>
          <p class="form-p">沒有會員帳號？<a href="register.jsp">註冊</a></p>
        </fieldset>
      </form>
  </div>
</div>

      <script type="text/javascript">
          function chk(){

            if(document.send.id.value==''){
                alert("帳號尚未輸入！");
                document.send.id.focus();
                return false;
            }

            if(document.send.pwd.value==''){
                alert("密碼尚未輸入！");
                document.send.pwd.focus();
                return false;
            }
            alert("登入成功！");
            <--open("member.jsp");-->
            return true;
          }
        </script>

    <div class="footer">
      @copyright Epoch
    </div>
</div>
</body>
</html>
