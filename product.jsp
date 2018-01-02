<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="back_ui.css">
  <link rel="stylesheet" href="member.css">
  <title>Document</title>


</head>

<body>
  <div class='wrapper'>
    <%-- 最上方行 --%>
    <header class='header'>
      <div class='header-left'>
        <h1>後台</h1>
      </div>
      <div class='header-right'> aaa
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
              pic
            </div>
            <a href="">會員管理</a>
          </div>
        </li>
        <li class='li_sidebar'>
          <div class='li_position'>
            <div class='li_sidebar_pic'>
              pic
            </div>
            <a href="">產品管理</a>
          </div>
        </li>
        <li class='li_sidebar'>
          <div class='li_position'>
            <div class='li_sidebar_pic'>
              pic
            </div>
            <a href="">訂單管理</a>
          </div>
        </li>
        <li class='li_sidebar'>
          <div class='li_position'>
            <div class='li_sidebar_pic'>
              pic
            </div>
            <a href="">購物車</a>
          </div>
        </li>
        <li class='li_sidebar'>
          <div class='li_position'>
            <div class='li_sidebar_pic'>
              pic
            </div>
            <a href="">留言板</a>
          </div>
        </li>
        <li class='li_sidebar'>
          <div class='li_position'>
            <div class='li_sidebar_pic'>
              pic
            </div>
            <a href="">訪客計數器</a>
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
        <%-- 修改產品 --%>
        <li class='box box2'>
          <a href="product_update.jsp">修改產品</a>
        </li>
        <%-- 新增產品 --%>
        <li class='box box2'>
          <a href="product_add.jsp">新增產品</a>
        </li>
      </ul>

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