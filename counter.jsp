<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <meta http-equiv="Refresh" content="10,URL=counter.jsp">
  <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
  <%-- <script>
$( window ).unload(function() {
		window.location.href="logout.jsp";

});
  </script> --%>
</head>
<body>
<%
//選擇資料表
  sql = "SELECT counter FROM counter";
  ResultSet rs=con.createStatement().executeQuery(sql);
  int i=0;
  while(rs.next()) {
    i=Integer.parseInt(rs.getString("counter"));
  }
  if(session.isNew()) {
    sql="UPDATE counter SET counter = '"+String.valueOf((i+1))+"' WHERE counter = '"+String.valueOf(i)+"'" ;
    con.createStatement().execute(sql);
    out.print("你是第"+(i+1)+"位訪客");
  }else{
    out.print("你是第"+i+"位訪客");
  }
//關閉連線
  con.close();
%>



<%
//application.removeAttribute("currentUsers");
// String currentUsers="10";
//application.setAttribute("currentUsers","null");
// int counter=0;
String strOn_Line2 = (String)session.getAttribute("on_Line2"); //第一次為null，第二次為true
if(strOn_Line2 == null) { //第二次不會進入
  //currentUsers="0";
  out.print("123");
	session.setAttribute("on_Line2","true");
  String StrCounter1 = (String)application.getAttribute("currentUsers");//抓取String currentUsers=""
 // out.print("第一次目前使用者為"+objUsers);
	if(StrCounter1 == null) {
    StrCounter1 = "0";
    int counter1 = Integer.parseInt(StrCounter1) + 1;
    StrCounter1 = String.valueOf(counter1);
    application.setAttribute("currentUsers", StrCounter1);
    out.print("人數為" + StrCounter1);
	} else {
    int counter1 = Integer.parseInt(StrCounter1) + 1;
    StrCounter1 = String.valueOf(counter1);
    application.setAttribute("currentUsers", StrCounter1);
    out.print("人數為" + StrCounter1);
  }
} else {
  out.print(strOn_Line2);
  String StrCounter2 = (String)application.getAttribute("currentUsers");
  out.print("人數為" + StrCounter2);
}

%>

<%-- 現在人數為
<%=
	application.getAttribute("currentUsers")
%> --%>

</body>
</html>