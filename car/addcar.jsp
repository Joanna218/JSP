<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../config.jsp" %>
<html>
<head>
<title>add</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<%
		   String new_name=(String)request.getParameter("name");//下where指令用
		   String new_price="";
		   String new_path="";
		   sql="select * from product where product_name='"+new_name+"'";
		   ResultSet rs = con.createStatement().executeQuery(sql);
		   rs.next();
		   new_price=rs.getString("product_price");
		   new_path=rs.getString("image_path");
		   sql="select * from shoporder";
		   rs = con.createStatement().executeQuery(sql);
		   rs.last();
		   int count=rs.getRow();//查詢資料庫裏面有多少筆
       String new_num=request.getParameter("quantity");//讀買的數量有多少筆
		   String new_id=(String)session.getAttribute("id");//判斷買的人是誰
		   int new_totalprice=(Integer.parseInt(new_price)*Integer.parseInt(new_num));//數量*單項價格
//Step 4: 執行 SQL 指令
           sql="insert shoporder ( img, name, quantity, price ,id ,new_totalprice) ";//這些東西都存入shoporder裡面
           sql+="value ('" +new_path + "', ";
           sql+="'"+new_name+"', ";
           sql+="'"+new_num+"', ";
		       sql+="'"+new_price+"',";
           sql+="'"+new_id+"', ";
           sql+="'"+new_totalprice+"') ";
           con.createStatement().execute(sql);
    		   sql="insert book ( img, name, quantity, price ,id ,new_totalprice) ";//這些東西都存入shoporder裡面
           sql+="value ('" +new_path + "', ";
           sql+="'"+new_name+"', ";
           sql+="'"+new_num+"', ";
     		   sql+="'"+new_price+"',";
           sql+="'"+new_id+"', ";
           sql+="'"+new_totalprice+"') ";
           con.createStatement().execute(sql);
          //直接顯示最新的資料
          response.sendRedirect("shopping_cart.jsp");
%>
</body>
</html>
