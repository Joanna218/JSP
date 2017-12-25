<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
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
</body>
</html>