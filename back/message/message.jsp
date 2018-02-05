<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<%@ page import = "java.io.*" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
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
              <a href="../product/product.jsp"><img width="80" height="80" src="products.png" alt=""></a>
            </div>
            <a href="../product/product.jsp">產品管理</a>
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
              <a href="message.jsp" class="message"><img width="65" height="65" src="message.png" alt=""></a>
            </div>
            <a href="message.jsp">留言板</a>
          </div>
        </li>
        
      </ul>
    </div>
    <%-- 右邊內容 --%>
    <div class='right_content'>
      <ul class='member_box'>
        <%-- 會員一覽 --%>
        <li class='box box1'>
          <a href="message.jsp" style="padding=2px;">留言板管理</a>
        </li>
        </ul>



      <script>
        $(function() {
          $('.js-btn-update').on('click', function() {
            if (!confirm ("確定要修改嗎1?")) {
              location.reload(true);
            }
          });
          $('.js-btn-delete').on('click', function() {
            if (confirm ("確定要刪除嗎?")) {
              location.reload(true);

            }
          });
        })
      </script>
      <%
       //抓取更新的欄位，第一次執行為null
        String input_no = request.getParameter("ori_no");
        //out.print("ori_no:" +input_no);
        String input_id = request.getParameter("up_id");
        String input_pwd = request.getParameter("up_pwd");
        String input_name = request.getParameter("up_name");
        String input_sex = request.getParameter("up_sex");
        String input_birthday = request.getParameter("up_birthday");
        String input_message = request.getParameter("up_message");
        String input_email = request.getParameter("up_email");
        String input_time = request.getParameter("up_time");
        String modify = request.getParameter("submit");
        //每一筆資料都為一個form，這樣才知道使哪一筆資料按了按鈕
        if("delete".equals(modify)) {
          sql="DELETE FROM guestbook WHERE no = '"+input_no+"' ";
				  con.createStatement().execute(sql);
        }
      %>
      <table class='table_member'>
      <tr >
        <td >NO.</td>
        <td>名稱</td>
        <td>電子郵件</td>
        <td>留言內容</td>
        <td>時間</td>
        <td>刪除</td>
      </tr>
      <%
        //執行sql從資料庫撈出資料跑成表格
        sql = "SELECT * FROM guestbook";
        ResultSet rs = con.createStatement().executeQuery(sql);
        int n =1;
        while(rs.next()) {
          out.print("<tr><form action='message.jsp' method='post'>");
          //out.print("印n :"+n);
          out.print("<td><input type='hidden'>"+n+"</td>");
          out.print("<td style=display:none;> <input type='hidden' name='ori_no' value="+rs.getString("no")+"></td>");
          //out.print("<td><input type='text' name='up_id' value="+rs.getString("id")+"></td>");
          //out.print("<td><input type='text' name='up_pwd' value="+rs.getString("pwd")+"></td>");
          out.print("<td><input type='text' name='up_name'size='8' value="+rs.getString("name")+"></td>");
          //out.print("<td><select name='up_sex'><option value="+rs.getString("sex")+">"+rs.getString("sex")+"</option><option value=男>男</option><option value=女>女</option></select></td>");
          out.print("<td><input type='text' size='30' name='up_email' size='10' value="+rs.getString("email")+"></td>");
          //out.print("<td><input type='text' name='up_price' size='15' value="+rs.getString("price")+"></td>");
          out.print("<td><textarea rows='4' cols='20' name='up_message'  value="+rs.getString("message")+">"+rs.getString("message")+"</textarea></td>");
          out.print("<td><input type='text' name='up_time' size='10' value="+rs.getString("time")+"></td>");
          //out.print("<td><input type='submit' name='submit' value='update' class='js-btn-update'></td>");
          out.print("<td><input type='submit' name='submit' value='delete' class='js-btn-delete'></td>");
          out.print("</form></tr>");
          n++;
        }
      %>
      </table>
    </div>
    <div class='clear_float'></div>
  </div>
</body>

</html>

