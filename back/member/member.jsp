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
  <style type="text/css">
    .li_sidebar_pic img{
    
    margin-left: 50%;
    transform: translateX(-50%);
    margin-top: -10px;
    margin-bottom: 10px;
}
.header-right {
    text-decoration: none;
    width: 85%;
    height: 10vh;
    float: right;
    background-color: #f8f9fa;
}
.header-right a{
  text-decoration: none;
  color:gray;
}
.getout:hover{
  color:#e2007a;
}
.logout img{
  vertical-align: middle;
}
  </style>


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
        <form action="search_m.jsp" method="POST">
          <input type="text" name="search" placeholder="Search..">
          <input type="submit" name="btn_search" value="查詢">
        </form>
		  </div>
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
       </tr>
      <%
        sql = "SELECT * FROM member";
			  ResultSet rs = con.createStatement().executeQuery(sql);
        int n =1;
        while(rs.next()) {
          out.print("<tr><td><input type='hidden'>"+n+"</td>");
          out.print("<td style=display:none;> <input type='hidden' name='ori_no'>"+rs.getString("num_NO")+"</td>");
          out.print("<td>"+rs.getString("id")+"</td>");
          out.print("<td>"+rs.getString("pwd")+"</td>");
          out.print("<td>"+rs.getString("name")+"</td>");
          out.print("<td>"+rs.getString("sex")+"</td>");
          out.print("<td>"+rs.getString("birthday")+"</td>");
          out.print("<td>"+rs.getString("address")+"</td>");
          out.print("<td>"+rs.getString("email")+"</td>");
          out.print("<td>"+rs.getString("tel")+"</td></tr>");
          n++;
        }
      %>
      </table>
    </div>
    <div class='clear_float'></div>
  </div>
</body>

</html>