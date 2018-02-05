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
              <a href="member.jsp"><img width="80" height="80" src="member.png" alt=""></a>
            </div>
            <a href="member.jsp">會員管理</a>
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
              <a href=""><img width="80" height="80" src="order.png" alt=""></a>
            </div>
            <a href="../order/order.jsp">訂單管理</a>
          </div>
        </li>
        
        <li class='li_sidebar'>
          <div class='li_position'>
            <div class='li_sidebar_pic'>
              <a href="" class="message"><img width="65" height="65" src="message.png" alt=""></a>
            </div>
            <a href="../message/message.jsp">留言板</a>
          </div>
        </li>
      </ul>
    </div>
    <%-- 右邊內容 --%>
    <div class='right_content'>
      <ul class='member_box'>
        <%-- 會員一覽 --%>
        <li class='box box1'>
          <a href="member.jsp">會員一覽</a>
        </li>
        <%-- 修改會員 --%>
        <li class='box box2'>
          <a href="member_update.jsp">修改會員</a>
        </li>
      </ul>
       <%-- 會員查詢 --%>
      <div style="margin:20px;padding:20px;">
        <form action="search_m_update.jsp" method="POST">
          <input type="text" name="search" placeholder="Search..">
          <input type="submit" name="btn_search" value="查詢">
        </form>
		  </div>



      <script>
        $(function() {
          $('.js-btn-update').on('click', function() {
            if (!confirm ("確定要修改嗎?")) {
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
        String input_address = request.getParameter("up_address");
        String input_email = request.getParameter("up_email");
        String input_tel = request.getParameter("up_tel");
        String modify = request.getParameter("submit");
        //每一筆資料都為一個form，這樣才知道使哪一筆資料按了按鈕
        if("delete".equals(modify)) {
          sql="DELETE FROM member WHERE num_NO = '"+input_no+"' ";
				  con.createStatement().execute(sql);
        }else {
          sql="UPDATE member SET id= '"+input_id+"',pwd = '"+input_pwd+"' ,name = '"+input_name+"',sex = '"+input_sex+"',birthday = '"+input_birthday+"',address = '"+input_address+"',email = '"+input_email+"',tel = '"+input_tel+"' WHERE num_NO = '"+input_no+"'";
          int no2 =con.createStatement().executeUpdate(sql); //no2=1
          if (no2 > 0){
            out.print("<br>");
            out.print("&nbsp&nbsp&nbsp&nbsp&nbsp"+"第"+input_no+"筆修改成功!");
          }
        }
      %>
      <table class='table_member'>
      <tr >
        <td >NO.</td>
        <td>會員帳號</td>
        <td>會員密碼</td>
        <td>會員姓名</td>
        <td>性別</td>
        <td>生日</td>
        <td>住址</td>
        <td>e-mail</td>
        <td>電話</td>
        <td>更新</td>
        <td>刪除</td>
      </tr>
      <%
        //執行sql從資料庫撈出資料跑成表格
        sql = "SELECT * FROM member";
        ResultSet rs = con.createStatement().executeQuery(sql);
        int n =1;
        while(rs.next()) {
          out.print("<tr><form action='member_update.jsp' method='post'>");
          //out.print("印n :"+n);
          out.print("<td><input type='hidden'>"+n+"</td>");
          out.print("<td style=display:none;> <input type='hidden' name='ori_no' value="+rs.getString("num_NO")+"></td>");
          out.print("<td><input type='text' name='up_id' value="+rs.getString("id")+"></td>");
          out.print("<td><input type='text' name='up_pwd' value="+rs.getString("pwd")+"></td>");
          out.print("<td><input type='text' name='up_name'size='8' value="+rs.getString("name")+"></td>");
          out.print("<td><select name='up_sex'><option value="+rs.getString("sex")+">"+rs.getString("sex")+"</option><option value=男>男</option><option value=女>女</option></select></td>");
          out.print("<td><input type='text' name='up_birthday' size='10' value="+rs.getString("birthday")+"></td>");
          out.print("<td><input type='text' name='up_address' size='15' value="+rs.getString("address")+"></td>");
          out.print("<td><input type='text' name='up_email'  value="+rs.getString("email")+"></td>");
          out.print("<td><input type='text' name='up_tel' size='10' value="+rs.getString("tel")+"></td>");
          out.print("<td><input type='submit' name='submit' value='update' class='js-btn-update'></td>");
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

