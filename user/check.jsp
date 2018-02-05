<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../config.jsp" %>
<%
//如果表單沒有輸入值，回傳會是空字串，而不是null
//只要id或pwd一個為空值，就不符合
//if((request.getParameter("id").equals("")) || (request.getParameter("pwd").equals("")) ){
    //out.println("請輸入完整 !! <a href='login.html'>按此</a>重新登入") ;
//}
//else{
	//out.println("else");
	//sql = "SELECT * FROM user WHERE id='" +request.getParameter("id") + "'  AND pwd='" + request.getParameter("pwd") + "'"  ;
	sql = "SELECT * FROM user WHERE id='" +request.getParameter("id")+"'" ;
    ResultSet paperrs =con.createStatement().executeQuery(sql);
    //尋找是否有此帳號
    if(paperrs.next()){
		//有此帳號
		if(request.getParameter("id").equals(paperrs.getString("id")) && request.getParameter("pwd").equals(paperrs.getString("pwd"))){
			sql = "SELECT * FROM member WHERE id=? AND pwd=?";
			PreparedStatement pstmt = null;
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,request.getParameter("id"));
			pstmt.setString(2,request.getParameter("pwd"));
			paperrs = pstmt.executeQuery();
			//若有資料會建立一個session以之後比對是否登入過
            session.setAttribute("id",request.getParameter("id"));
			if(request.getParameter("keep")!=null){
				Cookie ck=new Cookie("id",request.getParameter("id"));
				ck.setMaxAge(99999);
				response.addCookie(ck);
			}
		if(	request.getParameter("id").equals("aaa")){
			response.sendRedirect("../back/member/member.jsp");
		}else{
			response.sendRedirect("../index.jsp");
	    }

		}else{

			out.print("<script>alert('密碼錯誤!! 請重新登入')</script>");
			out.print("<script>location.href='login.jsp'</script>");
			//out.println("密碼錯誤!! <a href='login.jsp'>按此</a>重新登入");
			//response.sendRedirect("login.jsp");

		}
    }else{
    	out.print("<script>alert('密碼帳號不符!! 請重新登入') </script>");
    	out.print("<script>location.href='login.jsp'</script>");
	}



%>