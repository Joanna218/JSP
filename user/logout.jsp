<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../config.jsp" %>
<%
Cookie ck = new Cookie("id","null");
ck.setMaxAge(0);
response.addCookie(ck);
session.removeAttribute("id");
response.sendRedirect("../index.jsp") ;
%>