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
    <header class='header'>
      <div class='header-left'>
        <h1>後台</h1>
      </div>
      <div class='header-right'> aaa
      </div>
    </header>
    <div class='clear_float'></div>
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



      <%-- <script>
        function confirmChoice() {
          if (confirm ("確定要修改嗎?")) {
　　     　sure();
          }else{
            document.write("失敗");
          }
        }
      </script> --%>
      <%
        String input_no = request.getParameter("up_no");
        String input_id = request.getParameter("up_id");
        String input_pwd = request.getParameter("up_pwd");
        String input_name = request.getParameter("up_name");
        String input_sex = request.getParameter("up_sex");
        String input_birthday = request.getParameter("up_birthday");
        String input_address = request.getParameter("up_address");
        String input_email = request.getParameter("up_email");
        String input_tel = request.getParameter("up_tel");
        String modify = request.getParameter("submit");
      %>
       <%-- <%!
      public  void sure() {

        if("update".equals(modify)) {
          //out.print("<script>alert('確定修改嗎?');</script>");
          sql="UPDATE member SET id= '"+input_id+"',pwd = '"+input_pwd+"' ,name = '"+input_name+"',sex = '"+input_sex+"',birthday = '"+input_birthday+"',address = '"+input_address+"',email = '"+input_email+"',tel = '"+input_tel+"' WHERE No = '"+input_no+"'";
          int no2 =con.createStatement().executeUpdate(sql); //no2=1
          if (no2 > 0){
            out.print("<br>");
            out.print("&nbsp&nbsp&nbsp&nbsp&nbsp"+"第"+input_no+"筆修改成功!");
          }
        }

        }
      %> --%>
      <%
        if("update".equals(modify)) {
          //out.print("<script>alert('確定修改嗎?');</script>");
          sql="UPDATE member SET id= '"+input_id+"',pwd = '"+input_pwd+"' ,name = '"+input_name+"',sex = '"+input_sex+"',birthday = '"+input_birthday+"',address = '"+input_address+"',email = '"+input_email+"',tel = '"+input_tel+"' WHERE No = '"+input_no+"'";
          int no2 =con.createStatement().executeUpdate(sql); //no2=1
          if (no2 > 0){
            out.print("<br>");
            out.print("&nbsp&nbsp&nbsp&nbsp&nbsp"+"第"+input_no+"筆修改成功!");
          }
        }
      %>
      <div class='text'></div>
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
        sql = "SELECT * FROM member";
        ResultSet rs = con.createStatement().executeQuery(sql);

        while(rs.next()) {
          out.print("<tr>");
          out.print("<form action='member_update.jsp' method='post'>");
          out.print("<td><input type='hidden' name='up_no' value="+rs.getString("NO")+">"+rs.getString("NO")+"</td>");
          out.print("<td><input type='text' name='up_id' value="+rs.getString("id")+"></td>");
          out.print("<td><input type='text' name='up_pwd' value="+rs.getString("pwd")+"></td>");
          out.print("<td><input type='text' name='up_name'size='8' value="+rs.getString("name")+"></td>");
          out.print("<td><select name='up_sex'><option value="+rs.getString("sex")+">"+rs.getString("sex")+"</option><option value=男>男</option><option value=女>女</option></select></td>");
          out.print("<td><input type='text' name='up_birthday' size='10' value="+rs.getString("birthday")+"></td>");
          out.print("<td><input type='text' name='up_address' size='15' value="+rs.getString("address")+"></td>");
          out.print("<td><input type='text' name='up_email'  value="+rs.getString("email")+"></td>");
          out.print("<td><input type='text' name='up_tel' size='10' value="+rs.getString("tel")+"></td>");
          out.print("<td><input type='submit' name='submit' value='update' onClick=confirmChoice()></td>");
          out.print("<td><input type='submit' name='submit' value='delete'></td>");
          out.print("</form>");
          out.print("</tr>");
        }

      %>
      </table>
    </div>
    <div class='clear_float'></div>
  </div>
</body>

</html>