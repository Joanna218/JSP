<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="../css/back_ui.css">
  <title>Document</title>
</head>

<body>
  <div class='wrapper'>
    <%-- 最上方行 --%>
    <header class='header'>
      <div class='header-left'>
        <h1>後台</h1>
      </div>
      <div class='header-right'>
      <%-- joanna --%>
        <%
          String Back_ID = (String)session.getAttribute("id");
          if(Back_ID!=null){
		        out.print("<span><a>"+Back_ID+"</a></span><span class='logout'><img src='logout.png' width='30px' width='30px'><a href='../../logout.jsp' class='getout'>登出</a></span>");
          }
        %>
      </div>
    </header>
    <%-- 清除浮動 --%>
    <div class='clear_float'></div>
    <%-- 左邊導覽列 --%>
    <div class='left_sidebar'>
      <ul class='ul_sidebar'>
        <li class='li_sidebar'>
          <div class='li_position'>
            <div class='li_sidebar_pic'>
              <a href="../member/member.jsp"><img width="80" height="80" src="member.png" alt=""></a>
            </div>
            <a href="../member/member.jsp">會員管理</a>
          </div>
        </li>
        <li class='li_sidebar'>
          <div class='li_position'>
            <div class='li_sidebar_pic'>
              <a href="product.jsp"><img width="80" height="80" src="products.png" alt=""></a>
            </div>
            <a href="product.jsp">產品管理</a>
          </div>
        </li>
        <li class='li_sidebar'>
          <div class='li_position'>
            <div class='li_sidebar_pic'>
              <a href="../order/order.jsp"><img width="80" height="80" src="order.png" alt=""></a>
            </div>
            <a href="../order/order.jsp">訂單管理</a>
          </div>
        </li>
        
        <li class='li_sidebar'>
          <div class='li_position'>
            <div class='li_sidebar_pic'>
              <a href="../message/message.jsp" class="message"><img width="65" height="65" src="message.png" alt=""></a>
            </div>
            <a href="../message/message.jsp">留言板</a>
          </div>
        </li>
        
      </ul>
    </div>
    <%-- 右邊內容 --%>
    <div class='right_content'>
      <ul class='member_box'>
        <%-- 產品一覽 --%>
        <li class='box box1'>
          <a href="product.jsp">產品一覽</a>
        </li>
        <li class='box box2'>
          <a href="product_i6update.jsp">I6</a>
        </li>
        <li class='box box2'>
          <a href="product_i6pupdate.jsp">I6 plus</a>
        </li>
         <br><br>
        <li class='box box2'>
          <a href="product_i78update.jsp">I7/8</a>
        </li>
        <li class='box box2'>
          <a href="product_i78pupdate.jsp">I7/8 plus</a>
        </li>
        <li class='box box2'>
          <a href="product_ixupdate.jsp">IX</a>
        </li>
      </ul>
      <%-- 會員查詢 --%>
      <div style="margin:20px;padding:20px;">
        <form action="search_p.jsp" method="POST">
          <input type="text" name="search" placeholder="Search..">
          <input type="submit" name="btn_search" value="查詢">
        </form>
		  </div>

      <table class='table_member'>
      <tr >
        <td >NO.</td>
        <td>圖片</td>
        <td>名稱</td>
        <td>價格</td>
        <td>庫存</td>
      </tr>
      <%
        sql = "SELECT * FROM product";
        ResultSet rs = con.createStatement().executeQuery(sql);
        int n =1;
        String checked="";
        while(rs.next()) {
          out.print("<tr><td><input type='hidden'>"+n+"</td>");
          out.print("<td style=display:none;> <input type='hidden' name='ori_no'>"+rs.getString("product_no")+"</td>");
          out.print("<td>"+"<img width='50' src ="+rs.getString("image_path")+"></td>");
          out.print("<td>"+rs.getString("product_name")+"</td>");
          out.print("<td>"+rs.getString("product_price")+"</td>");
          out.print("<td>"+rs.getString("product_num")+"</td></tr>");
          n++;
        }
      %>
      </table>
    </div>
    <div class='clear_float'></div>
  </div>
</body>

</html>