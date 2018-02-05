<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../config.jsp" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
    <style type="text/css">

.container{
        margin:auto;
        position:relative;
}

input#search{
        border-radius: 5px;
        width: 100px;
        height: 30px;
}

.search{
        margin:auto;
        padding: 0;
        text-align:center;
    }

.search *{vertical-align:middle;}

.login{
        text-align:right;
}
.login > a{
        text-decoration:none;
        color:gray;
}
.logo{
        margin:auto;
        padding: 0;
        text-align:center;
}
.menu{
        margin:auto;
        padding: 0;
        text-align:center;
}
.goods {
        margin: 0;
        padding: 0;
        list-style: none;
        display:inline-block;
        text-align: left;
        width: 101px;
        line-height: 10px;

}

    ul { /* 取消ul預設的內縮及樣式 */
        margin: 0;
        padding: 0;
        list-style: none;
        border-radius: 5px; /*邊界弧度*/
    }

    ul.drop-down-menu {
        border: #ccc 2px solid;
        display: inline-block;
        font-family: 'Open Sans', Arial, sans-serif;
        font-size: 13px;

    }

    ul.drop-down-menu li {
        position: relative;
        white-space: nowrap;
        border-right: #ccc 1px solid;
    }

    ul.drop-down-menu > li:last-child {
        border-right: none;
    }

    ul.drop-down-menu > li {
        float: left; /* 只有第一層是靠左對齊*/
    }

     ul.drop-down-menu a {
        background-color: #fff;
        color: #333;
        display: block;
        padding: 0 30px;
        text-decoration: none;
        line-height: 35px;

    }
    ul.drop-down-menu a:hover { /* 滑鼠滑入按鈕變色*/
        background-color: #fff;
        color: #AAAAAA;
    }

    ul.drop-down-menu li:hover > a { /* 滑鼠移入次選單上層按鈕保持變色*/
        background-color: #fff;
        color: #AAAAAA;
    }
    ul.drop-down-menu ul {

        border: #ccc 1px solid;
        position: absolute;
        z-index: 99;
        left: -1px;
        top: 100%;
        min-width: 100px;
    }

    ul.drop-down-menu ul li {

        border-bottom: #ccc 1px solid;

    }

    ul.drop-down-menu ul li:last-child {
        border-bottom: none;
    }

     ul.drop-down-menu ul { /*隱藏次選單*/
        visibility: hidden;

    }

    ul.drop-down-menu li:hover > ul { /* 滑鼠滑入展開次選單*/
        visibility: visible;
        opacity: 1;
        -webkit-transition: opacity 0.3s;
        transition: opacity 0.3s;
        left: -1px;
        border-right: 5px;
    }

    ul.drop-down-menu li:hover > ul ul { /* 滑鼠滑入之後、次選單之後的選單依舊隱藏*/
        left: 99999px;
    }

    ul.drop-down-menu ul li:hover > ul { /* 第二層之後的選單展開位置*/
       left: 90%;
    }



.footer{
    position:relative;
    left:0;

    width: 100%;
    margin-bottom:20px;
    color: gray;
    text-align: center;
    line-height:60px;
}

.leave_message{
    margin:auto;
    margin-top:30px;
    margin-bottom:10px;
    width:600px;
    text-align:left;
    background-color:#DDDDDD;
}

.show_message{
    margin:auto;
    margin-top:10px;
    margin-bottom:30px;
    width:600px;
    text-align:left;
}
legend{
    text-align:center;
}
.btn_go_to_leave_message{
    margin:10px;
    margin-left:40%;
    padding:0px 10px;
    text-decoration: none;
    background-color: #FFFFFF;
    color:#666666;
    line-height: 1.5em;
    font-size:15px;
    border-radius: 5px;/*邊界弧度*/
    background-color:white;
    border: #888888 2px solid;
}
.btn_go_to_leave_message:hover{
    color: #AAAAAA;
}
.form_txt{
    height: 20px;
}
.form_txt_message{
    height: 150px;
}

.jumptopage{
    margin:auto;
    padding: 0;
    position:relative;
    color: gray;
    text-align: center;
    line-height:20px;
}

ul.pagination {
    display: inline-block;
    padding: 0;
    margin: 0;
}

ul.pagination li {display: inline;}

ul.pagination li a {
    color: black;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
    transition: background-color .3s;
}

ul.pagination li a.active {
    background-color: #AAAAAA;
    color: white;
}

ul.pagination li a:hover:not(.active) {
    background-color: #ddd;
}


.page{
    text-align: center;
}
    </style>
  <script type="text/javascript">
        function sentmessage(){
            var email=document.getElementById("Email").value;
            var name=document.getElementById("Name").value;
　          var message=document.getElementById("Message").value;
　          alert(email+"\n"+name+"\n"+message);
            return(email+"\n"+name+"\n"+message);
        }

    </script>

</head>
<style>
     @import url(../css/index.css);
    .login a:hover{color:#e2007a; text-decoration:underline;}
</style>
<body>
<div class="all">
<marquee behavior=scroll direction=left loop=infinite height=20 width=100% bgcolor="#333" onMouseOver="this.stop()" onMouseOut="this.start()">
<%

           sql="select * from randad";
           ResultSet rs3=con.createStatement().executeQuery(sql);
           rs3.last();
           int total_count=rs3.getRow();
           Random ran=new Random();
           int current_adid=ran.nextInt(total_count)+1;
           sql="select * from randad where adid= " + current_adid;
           rs3=con.createStatement().executeQuery(sql);
           while (rs3.next())
           {
             out.println("<a style='color:white'>"+rs3.getString("Alternate")+"</a>");
            }
%>
</marquee>
	<div class="container">
	<!--Logo-->
		<div class="logo">
			<a href ="../index.jsp" class=""><img src="../image/logo.png"></a>
		</div>
	<!--index-->
		<!--search-->
		<div class="search">
			<form action="search.jsp" method="POST" style="display:inline;" >
			<%-- <input type="text" id="search" names="search" placeholder="搜尋商品..." /> --%>
		</form>
            <span class="menu">
                <ul class="drop-down-menu">
                    <li><a href="../index.jsp">&nbsp;&nbsp;首頁&nbsp;&nbsp;</a>
                    </li>
                    <li><a href="../product/store.jsp">&nbsp;&nbsp;商品&nbsp;&nbsp;</a>
                        <ul class="goods">
                            <li><a href="../product/i6_i6s.jsp">Iphone6/6s</a>
                            </li>
                            <li><a href="../product/i6_i6splus.jsp">Iphone6+</a>
                            </li>
                            <li><a href="../product/i7_8.jsp">Iphone7/8</a>
                            </li>
                            <li><a href="../product/i7_8plus.jsp">Iphone7/8+</a>
                            </li>
                            <li><a href="../product/iX.jsp">IphoneX</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="../user/member.jsp">會員中心</a>
                        <ul>
                            <li><a href="../user/register.jsp">會員註冊</a>
                            </li>
                            <li><a href="../user/mbinformation.jsp">修改資料</a>
                            </li>
                            <li><a href="../user/orderrecode.jsp">訂單查詢</a>
                            </li>
                        </ul>
                    </li>

                    <li><a href="../car/shopping_cart.jsp">購物車</a>
                    </li>
                    <li><a  href="../contact.jsp">聯絡我們</a>
                        <ul>
                            <li><a href="../about.jsp">組員簡介</a>
                            </li>
                            <li><a href="../board/message.jsp">留言板</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </span>
            <span class="login">
                <%
            if(session.getAttribute("id") != null ){
            sql = "SELECT * FROM user WHERE id='" +session.getAttribute("id")+"';";
            ResultSet paperrs1 =con.createStatement().executeQuery(sql);
            String id="", pwd="";
            //讀出id, pwd當成使用者要更改時的內定值
                while(paperrs1.next()){
                    id=paperrs1.getString("id");
                }
                if(id.equals("aaa")){
                out.print("<a href='../back/member/member.jsp'>"+id+"</a>");
                }else{
                    out.print("<a href='../user/mbinformation.jsp'>"+id+"</a>");
                }
            out.print(" | ");
            out.print("<a href='../user/logout.jsp'> <img src='../user/logout.png' width='30px' width='30px'>登出</a>");
            }
            else{
                out.print("<a href='../user/login.jsp'> 會員登入</a>");
            }
        %>
            </span>
		</div>
        <!--填寫留言板-->
        <div class="leave_message">
            <form action="add.jsp" accept-charset="utf-8" class="leave_message_form" class="">
                <fieldset>
                <!-- <fieldset class="form_message"> -->
                <table border="0" cellspacing="0" width="100%">
                    <tr>
                        <td nowrap width="13%"><font>您的大名：</font>
                        <input maxLength="10" id="Name" name="name" size="22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您的性別：<input type="radio" value="BOY" name="Sex1" checked>男<input type="radio" value="GIRL" name="Sex1" >女</td>
                    </tr>
                    <tr>
                        <td>電子郵件： <input id="Email" name="email" size="22" maxLength="50" onBlur="mail(this)"></td>
                    </tr>
                    <tr>
                        <td valign="top"><font>留言內容：</font>
                        <textarea id="Message" name="content" rows="6" colspan="3" cols="52"></textarea></td>
                        <!-- <script src="css/common.js"></script>
                        <script type="text/javascript" language="javascript">
                            fnSetMaxLength("Message",500,false);
                        </script>-->
                    </tr>
                    <tr>
                        <td><input type="submit" class="btn_go_to_leave_message" value="確定送出" onclick="sentmessage()"></td>
                    </tr>
                </table>
            </fieldset>

             </form>
        </div>
        <%
            sql="select * from guestbook"; //算出共幾筆留言
            ResultSet temp=con.createStatement().executeQuery(sql);
            //讀取表單的input_pages
            String page_string = request.getParameter("input_pages");
            if (page_string == null) {  //第一次進入還沒有給current_page，因此為null
                page_string = "1";  //無留言時將頁數指標訂為1
            }
            Integer current_page=Integer.valueOf(page_string);//將page_string轉成整數
            //顯示留言
            int start_record=(current_page-1)*5;
            //遞減排序, 讓最新的資料排在最前面
            sql="SELECT * FROM guestbook ORDER BY no DESC LIMIT ";//LIMIT是限制傳回筆數
            sql+=start_record+",5";
            temp=con.createStatement().executeQuery(sql);
        %>
        <%-- 顯示留言板 --%>
        <div class="show_message">
                <form action="message_sumbit" method="get" accept-charset="utf-8">
                    <fieldset>
                        <h2>留言板</h2>
                        <table>
						<%while(temp.next()){%>
                            <tr>
                                <td>Name:<%out.println(temp.getString("name")+"<br>");%></td></tr>
                            <tr>
                                <td>Email:<%out.println(temp.getString("email")+"<br>");%></td></tr>
                            <tr>
                                <td>Message:<%out.println(temp.getString("message")+"<br>");%></td></tr>
							<tr>
                                <td>Time:<%out.println(temp.getString("time")+"<br><hr>");%></td></tr>
						<%}%>
                        </table>
                    </fieldset>
                </form>
        </div>

        <!-- 顯示目前頁數.. -->
        <div class="jumptopage">
		<%
            //Step 4: 執行 SQL 指令, 若要操作記錄集, 需使用executeQuery, 才能傳回ResultSet
           sql="select * from guestbook"; //算出共幾筆留言
           ResultSet rs=con.createStatement().executeQuery(sql);
           //先移到檔尾, getRow()後, 就可知道共有幾筆記錄
           rs.last();
           int total_content=rs.getRow();
           out.println("共"+total_content+"筆留言<p>");
           //每頁顯示5筆, 算出共幾頁
           int page_num=(int)Math.ceil((double)total_content/5.0); //無條件進位
		   if (page_num==0) { //無留言時將頁數指標訂為1
		       page_num=1;
           }
		   out.println("共"+page_num+"頁，目前在第"+current_page+"頁");
        %></div>
        <%-- 跳至第..頁 --%>
		<form class="jumptopage" action="message.jsp?input_pages= <%= current_page %>" method="get">跳至
		    <input type="text" size="3" name="input_pages" value="<%=current_page%>"> 頁
			<input type="submit" value="送出">
		</form>
        <%-- 顯示第一頁下一頁 --%>
        <div class="page">
            <ul class="pagination">
        <%
            if(current_page!=1 && current_page!= page_num){
				out.print("<li><a href=message.jsp?input_pages=1> 第一頁</a></li>"+"&nbsp");
				out.print("<li><a href=message.jsp?input_pages="+(current_page-1)+">"+"<<"+"</a></li>"+"&nbsp");
                for(int i=1;i<=page_num;i++) {
			        out.print("<li><a href='message.jsp?input_pages="+i+"'>"+i+"</a><li>&nbsp;"); //&nbsp;html的空白
                }
				out.print("<li><a href=message.jsp?input_pages="+(current_page+1)+">"+">>"+"</a></li>"+"&nbsp");
				out.print("<li><a href=message.jsp?input_pages="+page_num+">"+"最後一頁"+"</a></li>"+"&nbsp");
		    }else if(current_page==1){
                out.print("<li><a>"+"第一頁"+"</a></li>");
                out.print("<li><a>"+"<<"+"</a></li>");
                for(int i=1;i<=page_num;i++) { //使用get傳輸方式,建立1,2,...頁超連結
			        out.print("<li><a href='message.jsp?input_pages="+i+"'>"+i+"</a><li>&nbsp;"); //&nbsp;html的空白
                }
				out.print("<li><a href=message.jsp?input_pages="+(current_page+1)+">"+">>"+"</a><li>"+"&nbsp");
				out.print("<li><a href=message.jsp?input_pages="+page_num+">"+"最後一頁"+"</a><li>"+"&nbsp");
			}else if(current_page==page_num){
				out.print("<li><a href=message.jsp?input_pages=1>"+"第一頁"+"</a>"+"&nbsp");
				out.print("<li><a href=message.jsp?input_pages="+(current_page-1)+">"+"<<"+"</a><li>"+"&nbsp");
                for(int i=1;i<=page_num;i++) { //使用get傳輸方式,建立1,2,...頁超連結
			        out.print("<li><a href='message.jsp?input_pages="+i+"'>"+i+"</a>&nbsp;"); //&nbsp;html的空白
                }
                out.print("<li><a>"+">>"+"</a></li>");
                out.print("<li><a>"+"最後一頁"+"</a></li>");
			}
        %>
            </ul>
        </div>
       	<div class="footer">
			@copyright Epoch
		</div>
	 </div>
</div>
</body>
</html>