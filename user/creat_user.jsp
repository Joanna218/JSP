<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../config.jsp" %>

<html>
    <head>
        <title>JSP INSERT</title>
    </head>
    <body>
<%
       				String email =request.getParameter("email");
					String id =request.getParameter("mbaccoidunt");
					String pwd =request.getParameter("pwd");
					String name =request.getParameter("name");
					String gender =request.getParameter("gender");
					String year =request.getParameter("year");
					String month =request.getParameter("month");
					String date =request.getParameter("date");


//執行 SQL 指令
                    sql = "INSERT user(email,id,pwd,name,gender,year,month,date)";
					sql+="value ('" + email + "', ";
					sql+="'"+id+"', ";
					sql+="'"+pwd+"', ";
					sql+="'"+name+"', ";
					sql+="'"+gender+"', ";
					sql+="'"+year+"', ";
					sql+="'"+month+"', ";
					sql+="'"+date+"') ";
                    out.println(sql);
                    con.createStatement().execute(sql);

//Step 5: 顯示結果

                    response.sendRedirect("../index.jsp") ;
//Step 6: 關閉連線
                    con.close();
 %>
    </body>
</html>
