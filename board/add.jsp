<!-- Step 0: import library -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<html>
<head>
<title>add</title>
</head>
<body>
<%!
	String newline(String str){
	int index=0;
	while((index=str.indexOf("\n"))!=-1){
		str=str.substring(0,index)+"<br>"+str.substring(index+1);
	}
	return(str);
	}
%>
<%


           String new_name=new String(request.getParameter("name"));
		   //String new_name=request.getParameter("name");
           String new_mail=request.getParameter("email");
           //String new_Message=new String(request.getParameter("Message").getBytes("ISO-8859-1"));
           String new_content=new String(request.getParameter("content"));

           sql="insert guestbook (name, email, message,time) ";
           sql+="value ('" + new_name + "', ";
           sql+="'"+new_mail+"', ";
           //sql+="'"+new_subject+"', ";
		   new_content=newline(new_content);
           java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
           sql+="'"+new_content+"', ";
           sql+="'"+new_date+"')";

           con.createStatement().execute(sql);

           con.close();

           response.sendRedirect("message.jsp");

%>
</body>
</html>
