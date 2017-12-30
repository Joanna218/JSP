<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
</head>
<body>
<%
String StrCounter= (String)application.getAttribute("currentUsers");
out.print("抓取前"+StrCounter);
if(StrCounter != null &&　Integer.parseInt(StrCounter)>0 ) {
    int counter = Integer.parseInt(StrCounter) - 1;
		String str_currentUsers=String.valueOf(counter);
    out.print("抓取後"+str_currentUsers);
    application.setAttribute("currentUsers",str_currentUsers);
    //session.invalidate();
} else if(Integer.parseInt(StrCounter) < 0) {
  application.setAttribute("currentUsers","0");
}
%>

<%-- <%
 //Comment: This would return null for the first time
 Integer counter= (Integer)application.getAttribute("numberOfVisits");
 if( counter ==null || counter == 0 ){
 //Comment: For the very first Visitor
 counter = 1;
 }else{
 //Comment: For Others
 counter = counter+ 1;
 }
 application.setAttribute("numberOfVisits", counter);
%> --%>

</body>
</html>