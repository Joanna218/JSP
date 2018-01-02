<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
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
          $('.js-btn-add').on('click', function() {
            if (confirm ("確定要新增嗎?")) {
              location.reload(true);
            }
          });
        })
      </script>

      <%-- 新增產品 --%>
      <table class='table_member'>
        <form action='product_update.jsp' method='post'>
          <tr>
            <td>圖片</td>
            <td>名稱</td>
            <td>價格</td>
            <td>庫存</td>
            <td>新增</td>
          </tr>
          <tr>
            <td><input type="text" name="add_path" placeholder="Src" ></td>
            <td><input type="text" name="add_name" placeholder="Name" ></td>
            <td><input type="text" name="add_price" placeholder="Price" ></td>
            <td><input type="text" name="add_num" placeholder="Num" ></td>
            <td><input type="submit" name="submit" value="add" class='js-btn-add' ></td>
          <tr>
        </form>
      </table>
      <%-- 更新刪除產品 --%>
      <table class='table_member'>
      <tr >
        <td >NO.</td>
        <td>圖片</td>
        <td>名稱</td>
        <td>價格</td>
        <td>庫存</td>
        <td>修改</td>
        <td>刪除</td>
        <td>上架</td>
      </tr>

      <%
        String input_no = request.getParameter("ori_no");
        out.print("ori_no:" +input_no);
        //String input_path = request.getParameter("product_path");
        String input_name = request.getParameter("name");
        String input_price = request.getParameter("price");
        String input_num = request.getParameter("num");
        String modify = request.getParameter("submit");
        String cb_YN = request.getParameter("YN2");
        String checked="";
        //新增產品
        String str_addpath=request.getParameter("add_path");
        String str_addname=request.getParameter("add_name");
        String str_addprice=request.getParameter("add_price");
        String str_addnum=request.getParameter("add_num");
        //判斷是否上架
        if(cb_YN!=null){
          cb_YN="Y";
        } else {
          cb_YN="N";
        }
        //送出表單後
        if("delete".equals(modify)) {
          out.print("有近來");
          sql="DELETE FROM product WHERE product_no = '"+input_no+"' ";
				  con.createStatement().execute(sql);
        } else if ("update".equals(modify)) {
          sql="UPDATE product SET product_name= '"+input_name+"',product_price = '"+input_price+"' ,product_num = '"+input_num+"',YN = '"+cb_YN+"'WHERE product_no = '"+input_no+"'";
          out.print(sql);
           int no2 =con.createStatement().executeUpdate(sql); //no2=1
          if (no2 > 0){
            out.print("<br>");
            out.print("&nbsp&nbsp&nbsp&nbsp&nbsp"+"第"+input_no+"筆修改成功!");
          }
        }
        if("add".equals(modify)) {
          sql="insert product (image_path, product_name, product_price, product_num,YN) ";
          sql+="value ('" + str_addpath + "', ";
          sql+="'"+str_addname+"', ";
          sql+="'"+str_addprice+"', ";
          sql+="'"+str_addnum+"', ";
          sql+="'"+"Y"+"')";
          con.createStatement().execute(sql);
        }
        //選擇資料表跑表格
        sql = "SELECT * FROM product";
        ResultSet rs = con.createStatement().executeQuery(sql);
        int n=1;
        while(rs.next()) {
          out.print("<tr><form action='product_update.jsp' method='POST'>");
          //out.print("印n :"+n);
          out.print("<td><input type='hidden'>"+n+"</td>");
          out.print("<td style=display:none;> <input type='hidden' name='ori_no' value="+rs.getString("product_no")+">"+"</td>");
          out.print("<td>"+"<img width='50' src ="+rs.getString("image_path")+"></td>");
          out.print("<td><input type='text' name='name' value="+rs.getString("product_name")+">"+"</td>");
          out.print("<td><input type='text' name='price' value="+rs.getString("product_price")+">"+"</td>");
          out.print("<td><input type='text' name='num' value="+rs.getString("product_num")+">"+"</td>");
          out.print("<td><input type='submit' name='submit' value='update' class='js-btn-update'></td>");
          out.print("<td><input type='submit' name='submit' value='delete' class='js-btn-delete'></td>");
          checked=rs.getString("YN");
          if("N".equals(checked)) {
				    out.print("<td><input type='checkbox' name='YN2' value='NO' ></td>");
			    } else if ("Y".equals(checked)) {
				    out.print("<td><input type='checkbox' name='YN2' value='YES' checked ></td>");
		    	}
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

<%--
      String sql = "INSERT INTO temp(account, user, password) VALUES(?, ? ,?)";
          PreparedStatement prestate =  connection.prepareStatement(sql); //先建立一個 SQL 語句並回傳一個 PreparedStatement 物件
          prestate.setString(1, account); //對應到第一個問號
          prestate.setString(2, user); //對應到第二個問號
          prestate.setString(3, password); //對應到第三個問號
          prestate.executeUpdate();  //真正執行
          PreparedStatement pstmt = con.prepareStatement("UPDATE EMPLOYEES
                                     SET SALARY = ? WHERE ID = ?");
          pstmt.setBigDecimal(1, 153833.00)
          pstmt.setInt(2, 110592) --%>